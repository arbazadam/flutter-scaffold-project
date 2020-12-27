import 'package:first_app/screens/add_place_screen.dart';
import 'package:first_app/screens/form_screen.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'src/Answers.dart';
import 'package:first_app/src/Results.dart';
import 'package:flutter/material.dart';
import './src/Questions.dart';
import './src/CardWidget.dart';
import 'src/Quiz.dart';

void main() {
  //runApp(new MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.brown,
          accentColor: Colors.blueGrey,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Flutter Demo Home Page'),
        debugShowCheckedModeBanner: false,
        routes: {
          "/second": (context) => NewHome(),
          "/form-screen": (context) => FormScreen(),
          AddPlacesScreen.routeName: (context) => AddPlacesScreen()
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var list = [
    {
      'questions': "Who is the prime minister of India?",
      "answers": [
        "Jawaharlal Nehru",
        "Narendra Modi",
        "Amit shah",
        "pawan khera"
      ]
    },
    {
      'questions': "Who is the prime minister of UAE?",
      "answers": ["MBZ", "MBR", "HBM", "ABZ"]
    },
    {
      'questions': "Who is the prime minister of UK?",
      "answers": ["KK", "MNO", "LMNO", "PQR"]
    }
  ];
  void _handleAnswer() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('First App')),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/form-screen");
            },
            foregroundColor: Colors.amber,
            child: Icon(Icons.add)),
        body: Column(
          children: [
            Container(
                //decoration: BoxDecoration(border: Border.all(color: Colors.purple,width:2)) ,
                child: _counter < list.length
                    ? Quiz(
                        handler: _handleAnswer,
                        counter: _counter,
                        list: list,
                      )
                    : Results()),
            FlatButton.icon(
                onPressed: () {
                  //Navigator.pushNamed(context, "/second");
                  print("Relax");
                  Fluttertoast.showToast(
                    msg: "Toast",
                    backgroundColor: Colors.grey,
                  );
                },
                icon: Icon(Icons.edit_location),
                label: Text('Location'))
          ],
        ));
  }
}

class NewHome extends StatelessWidget {
  Widget build(BuildContext ctx) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(),
    );
  }
}
