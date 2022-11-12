import 'package:flutter/material.dart';

import '../widgets/chat_appbar_widget.dart';
import '../widgets/chat_input_message_widget.dart';
import '../widgets/chat_message_widget.dart';

class ChatPage extends StatefulWidget {
  // Usuario
  final String username;
  // Otros Usurios

  const ChatPage({
    Key? key,
    required this.username,
  }) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBarWidget(
        username: widget.username,
      ),
      body: Stack(
        children: [
          ListView(
            addAutomaticKeepAlives: true,
            reverse: false,
            padding: const EdgeInsets.only(bottom: 65),
            children: [
              // List of Messages
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
              ChatMessageWidget(
                  mensaje: "Hello", user: widget.username, isMe: false),
              ChatMessageWidget(
                  mensaje: "how are you?", user: widget.username, isMe: true),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ChatInputMessageWidget(),
          ),
        ],
      ),
    );
  }
}
