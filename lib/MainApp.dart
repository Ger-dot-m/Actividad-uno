import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainWidget.dart';
import 'Lista_elegido.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<MainWidget> widgets = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString("assets/JSON/comidas.json");
    final datos = await json.decode(response);

    for (int i = 0; i < 15; i++) {
      widgets.add(MainWidget(datos[i]["nombre"], datos[i]["descripcion"],
          datos[i]["precio"], datos[i]["imagen"]));
    }
    setState(() {
      widgets;
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Pagina1(widgets: widgets),
    );
  }
}

class Pagina1 extends StatelessWidget {
  const Pagina1({
    Key? key,
    required this.widgets,
  }) : super(key: key);

  final List<MainWidget> widgets;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comida mexicana!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50,
              fontFamily: 'helloFont',
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Colors.orange[700],
      ),
      body: Center(
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: widgets.length,
              itemBuilder: (context, index) {
                return widgets[index];
              })),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Lista_elegidos()),
          );
        },
        label: const Text('Ver lista'),
        icon: const Icon(Icons.shopping_cart),
        backgroundColor: Colors.green,
      ),
    );
  }
}
