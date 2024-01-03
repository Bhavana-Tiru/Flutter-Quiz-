import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.4,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 400,
          //     height: 350,
          //   ),
          // ),
          const Padding(padding: EdgeInsets.only(top: 20)),
          const Text(
            style: TextStyle(fontSize: 30, color: Colors.white),
            'Learn Flutter the fun way!',
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                  fontSize: 25, color: Color.fromARGB(255, 169, 73, 73)),
            ),
            icon: const Icon(Icons.arrow_right_alt),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
