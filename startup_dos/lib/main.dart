// Las clases van a ser separadas en archivos cuando el programa funcione correctamente.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: Center(
              child: ListView(
                //los siguientes dos no están definidos en ListView
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MainWidget("Tacos", "Comida mexinaca", "8", "assets/images/tux.jpg"),
                  MainWidget("Arroz", "Comida china", "18", "assets/images/tux.jpg"),
                  MainWidget("Bolillos", "Comida de pan", "2", "assets/images/tux.jpg"),
                ],
              ))),
    );
  }
}

class MainWidget extends StatelessWidget {
  String nombre="", descripcion, precio, imagen = "";
  MainWidget(this.nombre, this.descripcion, this.precio, this.imagen);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 150,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.amber,
            border: Border.all(
              color: Colors.amber,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Container(                   // Container de la imagen.
                child: Row(
                  children: <Widget>[
                    new Image.asset(imagen, width: 50, height: 50), // Imagen problemática
                    Column(
                      children: [
                        Text(nombre), Text(descripcion), Text(precio)
                      ],
                    )
                  ],
                ))));
  }
}
