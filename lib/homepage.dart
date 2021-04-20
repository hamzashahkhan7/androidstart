import 'package:chat_app/chat.dart';
import 'package:flutter/material.dart';

import 'chatscreen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        title: Text("VIP Boys Chat"),
        backgroundColor: Colors.red,

      ) ,
      backgroundColor: Colors.grey,
        body: new ChatScreen());
  }

}