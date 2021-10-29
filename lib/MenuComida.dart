import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MenuComida extends StatelessWidget {
  String nombre = "", descripcion, precio, imagen = "";
  MenuComida(this.nombre, this.descripcion, this.precio, this.imagen);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange[700],
          title: new Text("Comida mexicana"),
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                    width: 300,
                    height: 400,
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
                        padding: EdgeInsets.all(20),
                        //EdgeInsets.only(top: 20, bottom: 0, left: 10, right: 20),
                        child: Container(
                            // Container de la imagen.
                            child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    nombre,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        fontSize: 40,
                                        fontFamily: 'helloFont',
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            Container(
                                child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 20.0),
                              child: new Image.asset(imagen,
                                  width: 150, height: 120),
                            )),
                            stars,
                            Column(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "\$" + precio,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black54),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: 15, bottom: 0, left: 0, right: 0),
                                  child: Text(
                                    descripcion,
                                    style: const TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )))))
          ],
        ));
  }
}

var stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.yellow[700]),
    Icon(Icons.star, color: Colors.yellow[700]),
    Icon(Icons.star, color: Colors.yellow[700]),
    Icon(Icons.star, color: Colors.yellow[700]),
    Icon(Icons.star, color: Colors.black54),
  ],
);
