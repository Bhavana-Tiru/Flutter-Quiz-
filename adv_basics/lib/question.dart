import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() {
    return _Question();
  }
}

class _Question extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return const Text('Quiz Starts');
  }
}
