import 'package:flutter/material.dart';

class ChatInputMessageWidget extends StatefulWidget {
  final ScrollController scrollController;
  final TextEditingController message;

  const ChatInputMessageWidget(
      {Key? key, required this.scrollController, required this.message})
      : super(key: key);

  @override
  State<ChatInputMessageWidget> createState() => _ChatInputMessageWidgetState();
}

class _ChatInputMessageWidgetState extends State<ChatInputMessageWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: TextField(
              controller: widget.message,
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
                // print(widget.message.text);
                setState(() {
                  widget.scrollController.animateTo(
                    widget.scrollController.position.maxScrollExtent + 64,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeOut,
                  );
                });
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
