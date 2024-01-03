import 'package:adv_basics/question.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/startb.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  // Widget?activeScreen; // The ? tells Dart that the variable may conatin a Widget Or Null.
  var activeScreen = 'start-button';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartButton(switchScreen);
    // Value used if condition is true

    if (activeScreen == 'question-screen') {
      screenWidget = const Question();
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
