import 'package:flutter/material.dart';

class StartButton extends StatefulWidget {
  const StartButton({super.key});

  @override
  State<StartButton> createState() {
    return _StartButton();
  }
}

class _StartButton extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return OutlinedButton(
      onPressed: () {
        debugPrint('Started the Quiz');
      },
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
            fontSize: 25, color: Color.fromARGB(255, 169, 73, 73)),
      ),
      child: const Text('Start Quiz'),
    );
  }
}
