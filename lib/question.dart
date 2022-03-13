import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Question extends StatelessWidget {
  final String questionText;
  const Question({
    Key? key,
    required this.questionText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(
          color: Color.fromARGB(204, 23, 111, 212),
          fontSize: 27,
          fontWeight: FontWeight.bold,
          // shadows: <Shadow>[
          //   Shadow(
          //     offset: Offset(0.0, 0.0),
          //     blurRadius: 2.0,
          //     color: Color.fromARGB(26, 21, 41, 4),
          //   ),
          //   Shadow(
          //     offset: Offset(0.0, 0.0),
          //     blurRadius: 4.0,
          //     color: Color.fromARGB(50, 44, 24, 92),
          //   ),
          // ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
