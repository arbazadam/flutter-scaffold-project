import './Questions.dart';
import './Answers.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> list;
  final Function handler;
  final int counter;
  Quiz({@required this.list, @required this.handler, @required this.counter});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Questions(list[counter]['questions']),
      ...(list[counter]['answers'] as List<String>).map((ans) {
        return Answers(handler, ans);
      }).toList(),
    ]);
  }
}
