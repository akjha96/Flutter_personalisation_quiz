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
  // ignore: unused_field
  int _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Anand', 'score': 1},
        {'text': 'Anand', 'score': 1},
        {'text': 'Anand', 'score': 1},
        {'text': 'Anand', 'score': 1},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _totalScore += score;

      setState(() {
        _questionIndex += 1;
      });
    }

    void resetQuiz() {
      setState(() {
        _questionIndex = 0;
        _totalScore = 0;
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
            : Result(
                resultScore: _totalScore,
                resetHandler: resetQuiz,
              ),
      ),
    );
  }
}
