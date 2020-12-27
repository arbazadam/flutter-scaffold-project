import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function answerHandler;
  final String buttonText;

  Answers(this.answerHandler, this.buttonText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: answerHandler,
        child: Text(buttonText),
        color: Colors.black,
        textColor: Colors.white54,
      ),
      margin: EdgeInsets.fromLTRB(5, 0, 5, 8),
      width: double.infinity,
    );
  }
}
