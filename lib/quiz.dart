import 'package:flutter/material.dart';
import 'package:flutter_app/answer.dart';
import 'package:flutter_app/questions.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function buttonPressed;
  final int questionIndex;

  Quiz ({ @required this.questions, @required this.buttonPressed, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          child: Column(
            children: [
              Question(questions[questionIndex]["question"]),
              ...(questions[questionIndex]["answer"] as List<Map<String, Object>>).map((options){
                return Answer(() => buttonPressed(options["aV"]), options["aT"]);
              }).toList(),
            ],
          ),
        ),
    );
  }
}
