import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainWidget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('\t\t\tComida mexicana',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'helloFont',
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: Colors.red,
          ),
          body: Center(
              child: ListView(
                //los siguientes dos no están definidos en ListView
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MainWidget(
                      "Enchiladas rancheras",
                      "Cerdo cocido a fuego...",
                      "90.00",
                      "assets/images/tux.jpg"),
                  MainWidget("Chimichanga", "Pollo marinado, pimi...",
                      "70.00", "assets/images/tux.jpg"),
                  MainWidget("Burrito", "La carne que tú elijas...",
                      "45.00", "assets/images/tux.jpg"),
                  MainWidget(
                      "Pollo en chipotle",
                      "Pechuga de pollo ad...",
                      "110.00",
                      "assets/images/tux.jpg"),
                  MainWidget(
                      "Pez dorado mexicano",
                      "Pez dorado, aguacat...",
                      "180.00",
                      "assets/images/tux.jpg"),
                  MainWidget(
                      "Filete con chimichurri",
                      "Filete de falda de re....",
                      "220.00",
                      "assets/images/tux.jpg"),
                ],
              ))),
    );
  }
}
