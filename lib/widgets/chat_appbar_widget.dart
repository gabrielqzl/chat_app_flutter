import 'package:flutter/material.dart';

class ChatAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String username;

  const ChatAppBarWidget({
    Key? key,
    required this.username,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.deepPurple,
          Colors.purpleAccent,
        ]),
      ),
      width: double.infinity,
      height: 120,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 8.0, left: 8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://www.geekmi.news/__export/1637442709168/sites/debate/img/2021/10/14/onepiece1000.jpg_976912859.jpg"),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                username,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const Text(
                "Online",
                style: TextStyle(color: Colors.white38),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}
