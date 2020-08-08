import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();
//clear fields and read its value
  void _handleSubmitted(String text) {
    _textController.clear();
  }

//  The TextField with the TextEditingController gives you control over the text field. This controller will clear the field and read its value.
  Widget _buildTextComposer() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[TextField(
          controller: _textController,
          onSubmitted: _handleSubmitted,
          decoration: InputDecoration.collapsed(hintText: 'Send a message'),
        ),
      ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendly chat"),
      ),
      body: _buildTextComposer(),
    );
  }
}
