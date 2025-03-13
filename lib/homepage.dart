
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('My note app'),
      ),
      body: Center(
        child: Text('A basic note app'),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.add),
        label: 'Add',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.edit),label: 'Edit'),
        BottomNavigationBarItem(icon: Icon(Icons.delete),label: 'Delete')
      ]),
    );
  }
}