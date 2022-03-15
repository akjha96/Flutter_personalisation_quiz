import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'You completed the trial of Life!',
        style: TextStyle(
          color: Color.fromARGB(204, 14, 25, 37),
          fontSize: 27,
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }
}
