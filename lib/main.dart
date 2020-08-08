import 'package:chatty/ChatScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Chatty());

class Chatty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatty',
      home: ChatScreen(),
    );
  }
}
  
