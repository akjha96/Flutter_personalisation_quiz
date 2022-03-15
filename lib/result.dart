import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  const Result(
      {required this.resultScore, required this.resetHandler, Key? key})
      : super(key: key);

  String get resultPhase {
    String resultText;
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore < 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhase,
            style: const TextStyle(
              color: Color.fromARGB(204, 14, 25, 37),
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          OutlinedButton(
            child: const Text('Restart Quiz'),
            style: OutlinedButton.styleFrom(
              primary: Colors.white,
              onSurface: const Color.fromARGB(255, 11, 110, 41),
              elevation: 1,
              shadowColor: const Color.fromARGB(255, 103, 163, 35),
            ),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
