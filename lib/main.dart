import 'package:flutter/material.dart';

//custom widget
import 'question.dart';

void main() {
  runApp(MyApp());
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
    'What\'s your favourite color?',
    'What\'s your favourite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
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
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 3');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
