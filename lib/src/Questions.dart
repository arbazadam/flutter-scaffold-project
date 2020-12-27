import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String _question;

  Questions(this._question);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text(
          _question,
          style: TextStyle(
            color: Colors.blueAccent[300],
            fontSize: 30,
          ),
          textAlign: TextAlign.center,
        ),
        width: double.infinity);
  }
}
