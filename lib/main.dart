import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('Demo app')),
        body: Center(child: Text('welcome to Dart and Flutter'),
      ),
    ),
    );
  }
}