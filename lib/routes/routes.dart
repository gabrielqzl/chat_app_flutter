import 'package:flutter/material.dart';

import '../constants.dart';
import '../pages/chat_page.dart';
import '../pages/home_page.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreenRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case chatScreenRoute:
        var username = settings.arguments as String;
        return MaterialPageRoute(
          builder: (_) => ChatPage(username: username),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text("No route defined for ${settings.name}"),
                  ),
                ));
    }
  }
}
