import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:200,
      child: Card(
        elevation: 5,
        child: Center(child: Text("Center"),),
      ),
    );
  }
}
