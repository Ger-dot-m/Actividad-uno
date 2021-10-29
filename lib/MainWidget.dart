import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'MenuComida.dart';

// ignore: must_be_immutable
class MainWidget extends StatelessWidget {
  String nombre = "", descripcion, precio, imagen = "";
  MainWidget(this.nombre, this.descripcion, this.precio, this.imagen);
  bool agregado = false;

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
            padding: EdgeInsets.only(top: 20, bottom: 0, left: 0, right: 20),
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
                      // ! Averiguar como mandaarlo a la esquina del column
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
                            "Detalles"), // ! añadirle estilo para que se vea mejor
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
                    Text("\$" + precio,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                        textAlign: TextAlign.center),
                    Container(
                      child: Text(
                        "Añadir",
                        textAlign: TextAlign.end,
                      ),
                    ),
                    probando(),
                  ],
                ),
              ],
            ))));
  }
}

class probando extends StatefulWidget {
  const probando({Key? key}) : super(key: key);

  @override
  State<probando> createState() => _probando();
}

/// This is the private State class that goes with MyStatefulWidget.
class _probando extends State<probando> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
