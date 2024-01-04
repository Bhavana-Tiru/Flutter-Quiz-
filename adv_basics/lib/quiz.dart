import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/startb.dart';
import 'package:adv_basics/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  List<String> selectedAnswers = [];
  // Widget?activeScreen; // The ? tells Dart that the variable may conatin a Widget Or Null.
  var activeScreen = 'start-button';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(
        answer); // add :- adds new iteam to the list without re-assiging the variable instead it reaches out to existing value in memory and edits internal data.

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'start-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartButton(switchScreen);
    // Value used if condition is true

    if (activeScreen == 'question-screen') {
      screenWidget = Question(onSelectedAnswer: chooseAnswer);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(212, 125, 6, 161),
                Color.fromARGB(211, 168, 17, 214)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
          //Ternary Expression
          //activeScreen == 'start-button' //Condition yields true or false
          //? StartButton(switchScreen) // Value used if condition is true
          //: const Question(), // executed when it is false
        ),
      ),
    );
  }
}
