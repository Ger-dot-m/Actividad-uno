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
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              MainWidget("Persona1"),
              MainWidget("Persona2"),
              MainWidget("Persona2"),
            ],
          ))),
    );
  }
}

class MainWidget extends StatelessWidget {
  String texto = "";
  MainWidget(this.texto);

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
            child: Container(
              child: Column(
                children: [Image.asset("assets/images/tux.jpg")],
              ),
            )));
  }
}
