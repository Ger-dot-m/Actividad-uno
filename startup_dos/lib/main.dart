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
            title: const Text('COCINA MEXICANA'),
          ),
          body: Center(
              child: ListView(
                //los siguientes dos no están definidos en ListView
                //crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  MainWidget("ENCHILADAS RANCHERAS\n", "Cerdo cocido a fuego lento, cebolla...\n", "90.00", "assets/images/tux.jpg"),
                  MainWidget("CHIMICHANGA\n","Pollo marinado, pimiento, pico...\n", "70.00", "assets/images/tux.jpg"),
                  MainWidget("BURRITO\n","La carne que tú elijas(res, cerdo o...\n", "45.00", "assets/images/tux.jpg"),
                  MainWidget("POLLO EN CHIPOTLE\n","Pechuga de pollo adobada, jamón...\n", "110.00", "assets/images/tux.jpg"),
                  MainWidget("PEZ DORADO MEXICANO\n","Pez dorado, aguacate, salsa...\n", "180.00", "assets/images/tux.jpg"),
                  MainWidget("FILETE CON CHIMICHURRI\n","Filete de falda de res, salsa...\n", "220.00", "assets/images/tux.jpg"),
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
      margin: EdgeInsets.all(30),
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
          )
        )
      )
    );
  }
}
