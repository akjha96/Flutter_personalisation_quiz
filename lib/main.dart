import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  int questionIndex = 0;

  final questions = [
    'What\'s your favourite color?',
    'What\'s your favourite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      questionIndex += 1;
      print(questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
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
