import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:startup_dos/formatoListaCompras.dart';
import 'MainWidget.dart';

class Lista_elegidos extends StatefulWidget {
  Lista_elegidos({Key? key}) : super(key: key);

  @override
  _Lista_elegidosState createState() => _Lista_elegidosState();
}

class _Lista_elegidosState extends State<Lista_elegidos> {
  List<Formato_compras> compras = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString("assets/JSON/comidas.json");
    final data = await json.decode(response);

    for (int i = 0; i < 15; i++) {
      compras.add(Formato_compras(data[i]["nombre"], data[i]["precio"]));
    }
    setState(() {
      compras;
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
      home: Pagina2(compras: compras),
    );
  }
}

class Pagina2 extends StatelessWidget {
  const Pagina2({
    Key? key,
    required this.compras,
  }) : super(key: key);

  final List<Formato_compras> compras;

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
              itemCount: compras.length,
              itemBuilder: (context, index) {
                return compras[index];
              })),
    );
  }
}
