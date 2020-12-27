import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
          child: Column(
        children: [
          Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              height: 80,
              color: Colors.amber,
              child: Text(
                "Kitchen App",
              )),
          SizedBox(height: 20),
          ListTile(
            leading: Icon(Icons.restaurant),
            title: Text('Meals',
                style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontSize: 24,
                    fontWeight: FontWeight.w700)),
            onTap: () {},
          ),
        ],
      )),
    );
  }
}
