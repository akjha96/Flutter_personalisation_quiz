import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('Answer 1'),
        onPressed: selectHandler,
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all(Colors.red),
        //   foregroundColor: MaterialStateProperty.all(Colors.yellow),
        // ),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
          onSurface: Colors.amber,
          elevation: 5,
          shadowColor: Colors.lightGreen,
        ),
      ),
    );
  }
}
