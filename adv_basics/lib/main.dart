import 'package:adv_basics/startb.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.purple[800],
    body: const Imgb(),
  )));
}

class Imgb extends StatelessWidget {
  const Imgb({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 400,
            height: 350,
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            style: TextStyle(fontSize: 30, color: Colors.white),
            'Learn Flutter the fun way!',
          ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const StartButton(),
        ],
      ),
    );
  }
}
