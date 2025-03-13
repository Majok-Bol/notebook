import 'package:flutter/material.dart';
import 'package:notebook_app/notebook/lib/homepage.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:MyHomePage(),
    );
  }
}