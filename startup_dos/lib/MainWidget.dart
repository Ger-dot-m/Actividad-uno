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
        margin: EdgeInsets.all(30),
        decoration: BoxDecoration(
            color: Colors.cyan.shade500,
            border: Border.all(
              color: Colors.cyan.shade500,
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black54,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 0.75))
            ],
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Padding(
            padding: EdgeInsets.only(top:20, bottom:0, left:20, right:20),
            child: Container(
              // Container de la imagen.
                child: Row(
                  children: <Widget>[
                    Container(
                        child: Padding(
                          padding:
                          EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                          child: new Image.asset(imagen, width: 75, height: 75),
                        )),
                    Column(
                      children: [
                        Text(
                          nombre,
                          style: const TextStyle(
                            fontSize: 30,
                            fontFamily: 'helloFont',
                          ),
                        ),
                        Text(
                          descripcion,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "   \$" + precio,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),

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
            borderRadius: BorderRadius.all(Radius.circular(10))), //Color azul
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
