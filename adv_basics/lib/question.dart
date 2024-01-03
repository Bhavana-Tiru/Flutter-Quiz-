import 'package:flutter/material.dart';
import 'package:adv_basics/answer_button.dart';

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
    return SizedBox(
      width:
          double.infinity, //to use as width as you can or as wide as possible
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //const- stored in the menory once and can reuse by dart
          const Text(
            'The Question...',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            answerText: 'Answer text 1....',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer text 2....',
            onTap: () {},
          ),
          AnswerButton(
            answerText: 'Answer text 3....',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
