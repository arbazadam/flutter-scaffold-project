import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  static final routeName="/new-screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView.builder(itemBuilder: (ctx, index) {
            return Text("Hello");
          })
        ],
      ),
    );
  }
}
