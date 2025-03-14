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
                  border: OutlineInputBorder(),
                  hintText: 'Write your notes here ',

                ),
              )),
              // SizedBox(height: 10,),
              ElevatedButton(onPressed: null, child: Text('Save notes',style:TextStyle(color: Colors.redAccent),))

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