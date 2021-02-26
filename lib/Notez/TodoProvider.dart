import 'package:flutter/cupertino.dart';

class TodoProvider with ChangeNotifier {
  List<User> list = [
    User(id: 1, name: 'Godfred', age: 22),
    User(id: 2, name: 'Dari', age: 20),
    User(id: 3, name: 'Maxwell', age: 40),
    User(id: 4, name: 'Patrick', age: 18),
    User(id: 5, name: 'Moses', age: 30),
  ];

  void removeItem(int id) {
    list.removeWhere((user) {
      return user.id == id;
    });
    notifyListeners();
  }
}

class User {
  final int id;
  final String name;
  final int age;

  User({this.id, this.name, this.age});
}
