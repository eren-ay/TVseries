import 'package:flutter/material.dart';
import './routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TVseries',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false, // for debug just design material
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
