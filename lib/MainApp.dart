import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'MainWidget.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Comida mexicana!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'helloFont',
                  fontWeight: FontWeight.bold,
                )),
            backgroundColor: Colors.orange[700],
          ),
          body: Center(
              child: ListView(
            children: <Widget>[
              MainWidget(
                  "Enchiladas rancheras",
                  "Cerdo cocido a fuego lento, cebolla, pimiento, queso, salsa casera, arroz mexicano, crema agria, lechuga, guacamole.",
                  "90.00",
                  "assets/images/enchiladas.jpeg"),
              MainWidget(
                  "Chimichanga",
                  "Pollo marinado, pimiento, pico de gallo, queso, arroz mexicano, guacamole, crema agria y frijoles negros.",
                  "70.00",
                  "assets/images/chimichangas.jpg"),
              MainWidget(
                  "Burrito",
                  "La carne que tú elijas (res, cerdo o pollo) o vegetariano; cebolla, arroz mexicano, pimiento, queso, frijoles negros picantes.",
                  "45.00",
                  "assets/images/burritos.jpg"),
              MainWidget(
                  "Pollo en chipotle",
                  "Pechuga de pollo adobada, jamón, queso, cebolla asada, jitomate, champiñones, arroz mexicano, frijoles refritos.",
                  "110.00",
                  "assets/images/pollo.jpg"),
              MainWidget(
                  "Pez dorado mexicano",
                  "Pez dorado, aguacate, salsa de aguacate con chile serrano, mantequilla de hierbas y cítricos, camarones, guacamole.",
                  "180.00",
                  "assets/images/pez_dorado.jpg"),
              MainWidget(
                  "Filete con chimichurri",
                  "Filete de falda de res, salsa chimichurri casera, ensalada fresca, arroz mexicano y frijoles refritos picantes.",
                  "220.00",
                  "assets/images/filete.jpg"),
              MainWidget(
                  "Tostadas mexicanas",
                  "3 tortillas de tacos doradas, frijol refrito, crema, lechuga, tomate, queso mozzarella, salsa jalapeña, salsa aurora, carne de su elección.",
                  "220.00",
                  "assets/images/tostadas.jpg"),
              MainWidget(
                  "Zarape",
                  "Combinación de carne, pollo, res, pastor, jamón, tomate, cebolla, chile jalapeño, queso mozzarella, salsa jalapeña, 6 tortillas de taco.",
                  "100.00",
                  "assets/images/zarape.jpg"),
              MainWidget(
                  "Guaraches",
                  "Orden de 2 guaraches con frijoles y arroz ranchero, aguacate, lechuga, carne a su elección, cuajada y crema, salsa ranchera, cebolla con cilantro.",
                  "70.00",
                  "assets/images/guaraches.jpg"),
              MainWidget(
                  "Gordita",
                  "Ricas gorditas rellanas de frijol, aguacate, crema, lechuga, queso mozarela, carene de elección, res, pollo, posta, mixto, chorizo, salsa ranchera, salsa jalapeña, cebolla con cilantro. ",
                  "50.00",
                  "assets/images/gorditas.png"),
              MainWidget(
                  "Alambre",
                  "Fajitas de carne asada o pollo gratinado, queso mozzarella, chile jalapeño, cebolla, 6 tortillas de taco, salsa jalapeña, limón. ",
                  "120.00",
                  "assets/images/alambre.jpg"),
              MainWidget(
                  "Quesadillas",
                  "Tortillas de harina rellenas de queso Mozzarella, frijol, guacamol, salsa Aurora, crema y salsa jalapeña. ",
                  "80.00",
                  "assets/images/quesadillas.jpg"),
              MainWidget(
                  "Sopa de tortilla",
                  "Sopa de tortillas doradas con fondo de tomates, especies aromáticas, aguacate, crema, queso Mozzarella, cebolla con cilantro, salsa jalapeña y la carne de su elección.",
                  "70.00",
                  "assets/images/sopa_de_tortillas.jpg"),
              MainWidget(
                  "Frijoladas mexicanas",
                  "Tortillas de harina rellenas de queso Mozzarella, frijol, guacamol. Salsa Aurora, crema y salsa jalapeña. ",
                  "90.00",
                  "assets/images/frijoladas.jpg"),
              MainWidget(
                  "Cebollines",
                  "Chile jalapeño, salsa jalapeño y limón.  ",
                  "30.00",
                  "assets/images/cebollines.jpg"),
            ],
          ))),
    );
  }
}
