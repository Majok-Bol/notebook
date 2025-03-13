import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:Text('Demo app',style: TextStyle(color: Colors.indigoAccent,fontSize: 28),),centerTitle: true,),
        body: Center(child: Text('welcome to Dart and Flutter'),
      ),
    ),
    );
  }
}