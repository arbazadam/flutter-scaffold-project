import 'package:device_info/device_info.dart';
import 'package:first_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(PrimeWidget());
}

class PrimeWidget extends StatelessWidget {
  
  void functi() async{
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
print('Running on ${androidInfo.model}');  // e.g. "Moto G (4)"
print('These are the following features of this mobile ${androidInfo.device}');
  }
  @override
  Widget build(BuildContext context) {
    functi();
    return MaterialApp(
      theme: ThemeData(canvasColor: Color.fromRGBO(255, 200, 189, 5.6)),
      debugShowCheckedModeBanner: false,
      home: HomeWidget());
    
  }
}
