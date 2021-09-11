import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(){
      home: MainApp(),
    };
  }
}
