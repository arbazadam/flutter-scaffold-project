import 'package:flutter/cupertino.dart';

class Dogs with ChangeNotifier {
  final int id;
  final String name;
  final int age;
  final _listOfDogs = [];
  Dogs({this.id, this.name, this.age});

  Map<String, dynamic> toMap() {
    return {'id': id, 'name': name, 'age': age};
  }

  List<Dogs> get dogs {
    return [..._listOfDogs];
  }

  void addDogs(Dogs d) {
    _listOfDogs.add(Dogs(id: 4));
  }

  static List<int> evenList(List<int> lst) {
    if(lst.isNotEmpty)
    return lst.where((element) => element % 2 == 0).toList();
    else
    return null;
  }
}
