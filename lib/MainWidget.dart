import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'MenuComida.dart';

// !    Vista del menu

int cantidad = 0;

// ignore: must_be_immutable
class MainWidget extends StatelessWidget {
  String nombre = "", descripcion, precio, imagen = "";
  MainWidget(this.nombre, this.descripcion, this.precio, this.imagen);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 250,
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
                      style: const TextStyle(
                          fontSize: 35,
                          fontFamily: 'helloFont',
                          color: Colors.black),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                    child: new Image.asset(imagen, width: 300, height: 100),
                  )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          border: Border.all(
                            color: Colors.green.shade400,
                          ),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15.0,
                                offset: Offset(0.0, 0.75))
                          ],
                          borderRadius: BorderRadius.all(
                              Radius.circular(10))), //Color azul
                      child: TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        child: Text("Detalles"),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return MenuComida(
                                  nombre, descripcion, precio, imagen);
                            }),
                          );
                        },
                      ),
                    ),
                    Text("\$" + precio + "  ",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.start),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.remove),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.red)),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.add),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green)),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ))));
  }
}
