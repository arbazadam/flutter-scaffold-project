import 'package:flutter/material.dart';

class PhotosScreen extends StatelessWidget {
  Widget getCardBuilder() {
    return Container(
        height: 35,
        child: Card(
          elevation: 3,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 10,
        color: Colors.red,
        child: Card(
            child: Row(children: [
          getCardBuilder(),
          getCardBuilder(),
          getCardBuilder()
        ])));
  }
}
