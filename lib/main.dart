import 'package:flutter/material.dart';

//custom widget
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  final questions = [
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
      if (_questionIndex < questions.length - 1) {
        setState(() {
          _questionIndex += 1;
        });
        print(_questionIndex);
      } else {
        print('Maximum number of questions reached: ${_questionIndex + 1}');
      }
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questionText: questions[_questionIndex]['questionText'] as String,
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
