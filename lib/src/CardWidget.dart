import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.red, accentColor: Colors.grey),
        home: Scaffold(
            body: Container(
          margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
          height: 300,
          child: Container(
              width: 200,
              child: Column(
                children: [
                  TextField(keyboardType: TextInputType.number),
                  SizedBox(height: 20),
                  TextField(keyboardType: TextInputType.emailAddress)
                ],
              )),
        )));
  }
}
