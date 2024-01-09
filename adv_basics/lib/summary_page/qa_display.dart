import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:adv_basics/summary_page/display_numbers.dart';

class QA extends StatelessWidget {
  const QA(this.iteamData, {super.key});

  final Map<String, Object> iteamData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        iteamData['user_answer'] == iteamData['correct_answer'];
    // TODO: implement build
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DisplayNumbers(
          isCorrectAnswer: isCorrectAnswer,
          questionNo: iteamData['question_index'] as int,
        ),
        const SizedBox(width: 30),
        Expanded(
          //expands a child of a Row or Column or Flex so that
          //the child fills the available space along the flex widgets main axis.
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                iteamData['question'] as String,
                style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                iteamData['user_answer'] as String,
                style: GoogleFonts.podkova(
                  color: const Color.fromARGB(255, 190, 167, 230),
                  fontSize: 15,
                ),
              ),
              Text(iteamData['correct_answer'] as String),
            ],
          ),
        ),
      ],
    );
  }
}
