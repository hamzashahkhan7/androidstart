import 'package:flutter/material.dart';
import 'chat.dart';
class ChatScreen extends StatefulWidget {
  @override
  State createState()=>ChatScreenState();

}

class ChatScreenState extends State<ChatScreen> {

  final TextEditingController _textController = TextEditingController();

  final List<chat>_messages = <chat>[];

  void _handleSubmitted(String text){
    _textController.clear();
    chat message = chat(text);

    setState(() {
      _messages.insert(0, message);
    });

  }
  Widget _textComposerWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration.collapsed(hintText: "Send Your Message:" ),
              controller: _textController,
              onSubmitted: _handleSubmitted,

            ),
          ),
          Container(
            child: IconButton(icon:Icon(Icons.send),
                onPressed:(){_handleSubmitted(_textController.text);},
              color: Colors.red,
            ),

          )
        ],
      ),

    );
  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Flexible(child: ListView.builder(
          padding: EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_,int index)=> _messages[index],
          itemCount: _messages.length,

        ),
        ),
        Divider(height: 1.0),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _textComposerWidget(),

        )
      ],
    );
  }
}