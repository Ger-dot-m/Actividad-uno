import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainWidget.dart';
import 'dart:convert';
import 'package:flutter/services.dart';

class MyApp extends StatefulWidget{
  MyApp({Key ?key}) : super(key: key);
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  List<MainWidget> widgets = [];

  Future<void> readJson() async{
    final String response = await rootBundle.loadString("assets/JSON/comidas.json");
    final datos = await json.decode(response);

    for(int i = 0; i<10;i++){
      widgets.add(MainWidget( datos[i]["nombre"],
                              datos[i]["descripcion"],
                              datos[i]["precio"],
                              datos[i]["imagen"]  ));
    }
    setState(() {
      widgets;
    });
  }

  @override
  void initState(){
    readJson();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
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
                  itemBuilder: (context,index){
                    return widgets[index];
                  }
              ))),
    );
  }
}
