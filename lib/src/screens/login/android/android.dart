import 'package:flutter/material.dart';
import 'package:tv_series/src/screens/login/widgets/loginForm.dart';
import 'package:video_player/video_player.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        setState(() {
          _controller.play();
          _controller.setLooping(true);
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Stack(children: <Widget>[
      LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: screenHeight,
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.3,
                      child: VideoPlayer(_controller),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      const LoginForm(),
    ]);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
