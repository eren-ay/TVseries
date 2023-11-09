import 'screens/home/home_screen.dart';
import 'screens/shows/shows_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case '/shows':
        return MaterialPageRoute(builder: (context) => const ShowsScreen());
      default:
        return MaterialPageRoute(builder: (context) => const ShowsScreen());
    }
  }
}
