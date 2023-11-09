import 'package:flutter/material.dart';
import '../../components/header_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHeaderBar(),
      body: Center(
        child: Text('Hello World! home screen'),
      ),
    );
  }
}
