import 'package:flutter/material.dart';

class ChatInputMessageWidget extends StatelessWidget {
  ChatInputMessageWidget({super.key});

  final message = TextEditingController();
  late String _mensaje = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              controller: message,
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
              // onChanged: () {},
            ),
          ),
          IconButton(
              onPressed: () {
                _mensaje = message.text;
                print(_mensaje);
              },
              icon: const Icon(
                Icons.send,
                color: Colors.deepPurple,
              )),
        ],
      ),
    );
  }
}
