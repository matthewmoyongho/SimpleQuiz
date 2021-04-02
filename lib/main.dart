import 'package:flutter/material.dart';

import 'package:flutter_app/quiz.dart';
import 'package:flutter_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      home: _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  var _questionIndex = 0;
  var totalScore = 0;

  void reset(){
    setState(() {
      _questionIndex = 0;
      totalScore=0;
    });
  }
  void buttonPressed(int score) {
    totalScore+=score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final _questions = const [
    {
      "question": "How many days are there in a week?",
      "answer": [
        {"aT": "16", "aV": 0},
        {"aT": "7", "aV": 1},
        {"aT": "48", "aV": 0},
        {"aT": "22", "aV": 0}
      ]
    },
    {
      "question": "Is blue a colour?",
      "answer": [
        {"aT": "Maybe", "aV": 0},
        {"aT": "Yes", "aV": 1},
        {"aT": "Maybe not", "aV": 0},
        {"aT": "Go and ask my grandfather", "aV": 0}
      ]
    },
    {
      "question": "Who is the vice chancellor of UNN?",
      "answer": [
        {"aT": "Mr PUN", "aV": 0},
        {"aT": "Dr. Mrs Uguishiwu", "aV": 0},
        {"aT": "Prof. Charlie Boy", "aV": 1},
        {"aT": "Dr. Aniakwu", "aV": 0}
      ]
    },
    {
      "question": "What is John Brave's Favourite food?",
      "answer": [
        {"aT": "Rice", "aV": 0},
        {"aT": "Rice and beans", "aV": 1},
        {"aT": "I don't Know", "aV": 0},
        {"aT": "How am i suppose to know?", "aV": 0}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                buttonPressed: buttonPressed,
              )
            :
                  Result(totalScore, reset),
              );
  }
}