import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

// !    Vista de la lista

class Formato_compras extends StatelessWidget {
  String nombre = "", precio = "";
  Formato_compras(this.nombre, this.precio);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 150,
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.orange[50],
            border: Border.all(
              color: Colors.orange,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 0, left: 0, right: 0),
            child: Container(
                // Container de la imagen.
                child: Column(
              // ! El formato de presentación de los recuadros de comida
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      nombre,
                      style: const TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      precio,
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    )
                  ],
                )
              ],
            ))));
  }
}
