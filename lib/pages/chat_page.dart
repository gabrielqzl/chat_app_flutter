import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String username;

  const ChatPage({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Screen"),
      ),
      body: Center(child: Text("Chat Screen - Username : $username")),
    );
  }
}
