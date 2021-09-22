import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  String nombre = "", descripcion, precio, imagen = "";
  MainWidget(this.nombre, this.descripcion, this.precio, this.imagen);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 150,
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
            color: Colors.redAccent,
            border: Border.all(
              color: Colors.redAccent,
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
            child: Container(
              // Container de la imagen.
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                          child: new Image.asset(imagen, width: 100, height: 100),
                        )),
                    Column(
                      children: [
                        Text(
                          nombre,
                          style: const TextStyle(
                            fontSize: 40,
                            fontFamily: 'helloFont',
                          ),
                        ),
                        Text(
                          descripcion,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "\$" + precio,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 40.0),
                              color: Colors.blue, //Color azul
                              child: FlatButton(
                                child: Text("Ver"),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const menu1()),
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

class menu1 extends StatelessWidget {
  const menu1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Comida 1"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Regresar'),
        ),
      ),
    );
  }
}