import 'package:flutter/material.dart';

import '../widgets/home_background_widget.dart';
import '../widgets/home_loginform_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('LatinChat Flutter Home'),
      // ),
      body: Stack(
        children: [
          const HomeBackgroundWidget(
            shapeSize: 0.80,
            colorsA: Colors.deepPurple,
            colorsB: Colors.purpleAccent,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  "Chat App Flutter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                Divider(),
                HomeLoginForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
