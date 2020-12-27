import 'package:flutter/material.dart';

import 'add_place_screen.dart';

class FormScreen extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final focusNode = FocusNode();
    return Scaffold(
      key: _scaffoldKey,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onFieldSubmitted: (_) {
                        FocusScope.of(context).requestFocus(focusNode);
                      }),
                  TextFormField(
                    validator: (val) {
                      if (val.isEmpty || val.length < 4) return "Invalid Input";
                      return "";
                    },
                    onFieldSubmitted: (_) {
                      FocusScope.of(context);
                    },
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    focusNode: focusNode,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RaisedButton(
                    onPressed: () {
                      _scaffoldKey.currentState.showSnackBar(SnackBar(
                        content: Text('Assign a GlobalKey to the Scaffold'),
                        duration: Duration(seconds: 3),
                      ));
                    },
                    child: Text('Submit'),
                  ),
                  SizedBox(height: 20),
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(AddPlacesScreen.routeName);
                      },
                      child: Text('Add place screen'))
                ],
              )),
        ),
      ),
    );
  }
}
