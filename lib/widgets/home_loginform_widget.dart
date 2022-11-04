import 'package:flutter/material.dart';

import '../constants.dart';

class HomeLoginForm extends StatefulWidget {
  const HomeLoginForm({Key? key}) : super(key: key);

  @override
  State<HomeLoginForm> createState() => _HomeLoginFormState();
}

class _HomeLoginFormState extends State<HomeLoginForm> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: _controller,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.white,
          decoration: InputDecoration(
            labelText: 'Nickname',
            labelStyle: const TextStyle(color: Colors.white),
            suffixIcon: const Icon(Icons.person_pin, color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(width: 3, color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 3, color: Colors.white),
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
        ),
        const Divider(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff6F24FD),
            minimumSize: const Size.fromHeight(50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, chatScreenRoute,
                arguments: _controller.text);
          },
          child: const Text("ENTRAR", style: TextStyle(color: Colors.white)),
        ),
      ],
    );
  }
}
