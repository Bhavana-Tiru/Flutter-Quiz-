import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/data/questions.dart';

class Question extends StatefulWidget {
  const Question({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<Question> createState() {
    return _Question();
  }
}

class _Question extends State<Question> {
  var currentQuestionIndex = 0;

  void answerquestion(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    //it gives the acess to top widget class and its properties
    //currentQuestionIndex = currentQuestionIndex + 1;
    //currentQuestionIndex += 1;
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return SizedBox(
      width:
          double.infinity, //to use as width as you can or as wide as possible
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //const- stored in the menory once and can reuse by dart
            Text(
              currentQuestion.text,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 205, 181, 232),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.getShuffledAnswers().map((answer) {
              //answers displays in shuffle order
              //...(spread operator):- numbers were added as multiple,individual values to the list.
              return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerquestion(answer);
                  });
            })

            //to display the answers in order without shuffling:
            // ...currentQuestion.answers.map((answer) {
            //   //...(spread operator):- numbers were added as multiple,individual values to the list.
            //   return AnswerButton(answerText: answer, onTap: () {});
            // })
          ],
        ),
      ),
    );
  }
}
