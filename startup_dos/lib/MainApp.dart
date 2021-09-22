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
            title: const Text('\t\t\t\tComida mexicana',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'helloFont',
                )),
            backgroundColor: Colors.green,
          ),
          body: Center(
              child: ListView(
                //los siguientes dos no están definidos en ListView
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MainWidget(
                      "Enchiladas rancheras",
                      "Cerdo cocido a fuego lento, cebolla...\n",
                      "90.00",
                      "assets/images/tux.jpg"),
                  MainWidget("Chimichanga", "Pollo marinado, pimiento, pico...\n",
                      "70.00", "assets/images/tux.jpg"),
                  MainWidget("Burrito", "La carne que tú elijas(res, cerdo o...\n",
                      "45.00", "assets/images/tux.jpg"),
                  MainWidget(
                      "Pollo en chipotle",
                      "Pechuga de pollo adobada, jamón...\n",
                      "110.00",
                      "assets/images/tux.jpg"),
                  MainWidget(
                      "Pez dorado mexicano",
                      "Pez dorado, aguacate, salsa...\n",
                      "180.00",
                      "assets/images/tux.jpg"),
                  MainWidget(
                      "Filete con chimichurri",
                      "Filete de falda de res, salsa...\n",
                      "220.00",
                      "assets/images/tux.jpg"),
                ],
              ))),
    );
  }
}