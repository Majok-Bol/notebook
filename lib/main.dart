import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
//class to create the home page
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Notebook',style: TextStyle(fontSize: 20,color: Colors.deepOrangeAccent),),centerTitle: true,backgroundColor: Colors.black87,),
        body:Padding(padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: TextField(
                controller: null,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius:BorderRadius.circular(20),borderSide: BorderSide.none),
                  hintText: 'Write your notes here ',
                  fillColor: Colors.white38,
                  filled: true,

                ),
              )),
              ElevatedButton(onPressed: null, child: Text('Save notes',style:TextStyle(color: Colors.red,fontSize: 15),))

                ],
          ),
        ),

        bottomNavigationBar:BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.save),label: 'My notes'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add notes'),
          BottomNavigationBarItem(icon: Icon(Icons.edit),label: 'Edit'),
          BottomNavigationBarItem(icon: Icon(Icons.delete),label: 'Delete'),

        ]),
      ),
    );
  }
}