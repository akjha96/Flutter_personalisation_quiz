import 'package:flutter/material.dart';

//custom widget
import 'quiz.dart';
import 'result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': ['Blue', 'White', 'Green', 'Orange'],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Tiger', 'Lion', 'Tortoise', 'Rabbit'],
    },
    {
      'questionText': 'Who\'s your favourite Instructor?',
      'answers': ['Andrei', 'Max', 'Angela', 'Yihua'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        _questionIndex += 1;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : const Result(),
      ),
    );
  }
}
