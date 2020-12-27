import 'dart:io';


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import './http-requests/Products.dart';

void main() => runApp(FirstWidget());

class FirstWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewClass(),
    );
  }
}

class NewClass extends StatefulWidget {
  @override
  _NewClassState createState() => _NewClassState();
}

class _NewClassState extends State<NewClass> {
  Future<Products> fx;
  SharedPreferences sf;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    
  }

  Future<void> setPreferences() async{
    sf=await SharedPreferences.getInstance();
    sf.setString('name', 'arbaz');
  }

Future<void> getPreferences() async{
  var preferences=await SharedPreferences.getInstance();
  preferences.getString('name');
}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(
          child: ListView.separated(
              separatorBuilder: (ctx, i) => Divider(
                    color: Colors.amber,
                  ),
              itemCount: 3,
              itemBuilder: (ctx, i) {
                return ListTile(title: Text(i.toString()));
              }),
        ),
        body: Text('Hello'));
  }
}
