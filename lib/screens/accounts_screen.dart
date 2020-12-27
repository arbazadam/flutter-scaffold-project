import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:http/http.dart';

class AccountsScreen extends StatelessWidget {
  final list = ["Arbaz", "Aadil", "Ramanuj", "Zartab"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                color: Colors.black,
              ),
          itemCount: 20,
          // itemBuilder: (context, index) => Padding(
          //       //padding: EdgeInsets.all(8.0),
          //       child: Center(child: Text("Index $index")),
          //     ),
          itemBuilder: (context, index) =>
              Column(children: [Text(list[index])])),
    );
  }
}
