import 'package:flutter/material.dart';
import 'homepage.dart';
void main(){ runApp(myApp());}

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(

      title:"Chat App",
      home: HomePage(),

    );
  }
}