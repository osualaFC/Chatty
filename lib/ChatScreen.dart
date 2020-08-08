import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _textController = TextEditingController();

  Widget _buildTextComposer() {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: _textController,
        onSubmitted: _handleSubmitted,
        decoration: InputDecoration.collapsed(
            hintText: 'Send a message'),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friendly chat"),
      ),
    );
  }
}
