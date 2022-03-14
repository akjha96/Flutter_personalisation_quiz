import 'package:flutter/material.dart';
// import 'dart:ui' as ui;

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
      margin: const EdgeInsets.all(10),
      child: Text(
        questionText,
        style: const TextStyle(
          color: Color.fromARGB(204, 14, 25, 37),
          fontSize: 27,
          fontWeight: FontWeight.normal,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
