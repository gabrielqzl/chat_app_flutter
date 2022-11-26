// import 'package:chat_app_flutter/widgets/chat_input_message_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_appbar_widget.dart';
// import '../widgets/chat_input_message_widget.dart';
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
  final ScrollController scrollController = ScrollController();
  final TextEditingController controller = TextEditingController();
  final listaMensajes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatAppBarWidget(
        username: widget.username,
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              controller: scrollController,
              itemCount: listaMensajes.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatMessageWidget(
                  mensaje: listaMensajes[index],
                  user: "user",
                  isMe: true,
                );
              },
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: controller,
                      cursorColor: Colors.deepPurple,
                      decoration: InputDecoration(
                        hintText: 'Mensaje',
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(width: 3, color: Colors.black38),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        scrollController.animateTo(
                            scrollController.position.maxScrollExtent + 200,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeOut);

                        listaMensajes.add(controller.text);
                        controller.clear();
                      });
                    },
                    icon: const Icon(Icons.send),
                    color: Colors.deepPurple,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
