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
      body: Stack(
        children: [
          ListView(
            children: const [
              Text("Chat Page"),
            ],
          ),
          const Align(
              alignment: Alignment.bottomCenter, child: ChatInputMessage()),
        ],
      ),
    );
  }
}

class ChatInputMessage extends StatelessWidget {
  const ChatInputMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              cursorColor: Colors.deepPurple,
              decoration: InputDecoration(
                hintText: 'Mensaje',
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide:
                      const BorderSide(width: 3, color: Colors.deepPurple),
                  borderRadius: BorderRadius.circular(50),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: const BorderSide(width: 3, color: Colors.black38),
                ),
              ),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send,
                color: Colors.deepPurple,
              )),
        ],
      ),
    );
  }
}
