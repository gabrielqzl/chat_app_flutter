import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  final String mensaje;
  final String user;
  final bool isMe;

  const ChatMessageWidget({
    Key? key,
    required this.mensaje,
    required this.user,
    required this.isMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.85,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: isMe
                  ? [Colors.deepPurple, Colors.purpleAccent]
                  : [Colors.blueGrey, Colors.grey],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            mensaje,
            style: TextStyle(color: isMe ? Colors.white : Colors.white),
          ),
        ),
      ],
    );
  }
}
