import 'package:flutter/material.dart';

class AddPlacesScreen extends StatelessWidget {
  static final routeName = "/place-screen";

  @override
  Widget build(BuildContext context) {
    // final args=ModalRoute.of(context).settings.arguments as Map<String,String>;
    // final ab=args['hie'];
    // return Scaffold(body:SafeArea(child: Container(child:Text('$ab'))));
    return Scaffold(
      appBar: AppBar(
        title: Text(routeName.substring(0)),
      ),
    );
  }
}
