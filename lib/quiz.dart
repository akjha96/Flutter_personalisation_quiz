import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.questionIndex});

  final List<Map<String, Object>> questions;
  final VoidCallback answerQuestion;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questionText: questions[questionIndex]['questionText'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQuestion, answer);
        }).toList(),
      ],
    );
  }
}