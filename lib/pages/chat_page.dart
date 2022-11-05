import 'package:flutter/material.dart';

import '../widgets/chat_appbar_widget.dart';

class ChatPage extends StatelessWidget {
  // Usuario
  final String username;
  // Otros Usurios

  const ChatPage({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBarWidget(
        username: username,
      ),
      body: Center(child: Text("Chat Page - $username")),
    );
  }
}
