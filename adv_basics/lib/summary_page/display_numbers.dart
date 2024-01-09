import 'package:flutter/material.dart';

class DisplayNumbers extends StatelessWidget {
  const DisplayNumbers(
      {required this.isCorrectAnswer, required this.questionNo, super.key});

  final int questionNo;
  final bool isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final number = questionNo + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrectAnswer
            ? const Color.fromARGB(255, 146, 189, 225)
            : const Color.fromARGB(255, 222, 130, 161),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(number.toString(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(233, 12, 3, 45),
          )),
    );
  }
}
