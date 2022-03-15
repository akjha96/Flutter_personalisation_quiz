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

  static const questions = [
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
        body: _questionIndex < questions.length
            ? Column(
                children: <Widget>[
                  Question(
                    questionText:
                        questions[_questionIndex]['questionText'] as String,
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList(),
                ],
              )
            : const Center(
                child: Text(
                  'You completed the trial of Life!',
                  style: TextStyle(
                    color: Color.fromARGB(204, 14, 25, 37),
                    fontSize: 27,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
      ),
    );
  }
}
