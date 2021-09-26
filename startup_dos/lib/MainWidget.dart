import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MenuComida.dart';

class MainWidget extends StatelessWidget {
  String nombre = "", descripcion, precio, imagen = "";
  MainWidget(this.nombre, this.descripcion, this.precio, this.imagen);

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
            padding: EdgeInsets.only(top: 20, bottom: 0, left: 10, right: 20),
            child: Container(
                // Container de la imagen.
                child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                    child: new Image.asset(imagen, width: 100, height: 100),
                  )),
                ),
                Column(
                  children: [
                    Text(
                      nombre,
                      style: const TextStyle(
                          fontSize: 30,
                          fontFamily: 'helloFont',
                          color: Colors.black),
                    ),
                    // Text(
                    //   descripcion,
                    //   style: const TextStyle(
                    //       fontWeight: FontWeight.bold, color: Colors.white),
                    //),
                    Row(
                      children: <Widget>[
                        Text(
                          "\$" + precio,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 10.0),
                          alignment: Alignment
                              .topRight, // ! Averiguar como mandaarlo a la esquina del column
                          decoration: BoxDecoration(
                              color: Colors.green.shade400,
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
                            child: Text(
                                "Ver"), // TODO añadirle estilo para que se vea mejor
                            // color: Colors.white,
                            // child: Text(
                            //   "Ver",
                            //   style: const TextStyle(
                            //       fontWeight: FontWeight.bold,
                            //       color: Colors.lightBlue),
                            // ),
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
                        )
                      ],
                    )
                  ],
                ),
              ],
            ))));
  }
}
