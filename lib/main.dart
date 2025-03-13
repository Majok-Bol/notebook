import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
//class to create home page
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      useMaterial3: true,
      ),
      home: MyHomePage(),
    );

  }
}
//class to create the home page state
class MyHomePage extends StatefulWidget{
  @override
  MyHomePageState createState()=>MyHomePageState();
}
//class to set the home page
class MyHomePageState extends State<MyHomePage>{
  //set the counter to track the page clicked
  int currentPage=0;
  @override
  Widget build(BuildContext context){
    //build the home page screen
    return Scaffold(
      //add title
      appBar: AppBar(title: Text('My notebook',style: TextStyle(fontSize: 28,color: Colors.redAccent),),centerTitle: true,),

    body: Center(
      child:currentPage==0?Text('Add notes'):currentPage==1?Text('Edit notes'):Text('Delete notes'),
    ),
      //add bottom navigation icons
      bottomNavigationBar: BottomNavigationBar(currentIndex: currentPage,
    onTap: (index){
        setState(() {
          currentPage=index;
        });
    },
    items: [
      BottomNavigationBarItem(icon:Icon(Icons.add),label: 'Add notes'),
    BottomNavigationBarItem(icon:Icon(Icons.edit),label: 'Edit notes'),
    BottomNavigationBarItem(icon:Icon(Icons.delete),label: 'Delete notes'),
    ],
    ),
    );
  }
}