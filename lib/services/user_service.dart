import 'package:flutter/material.dart';
import 'package:status/models/user.dart';

class UserService with ChangeNotifier {
  User _user;
  User get user => this._user;
  bool get isUserExists => (this._user != null) ? true : false;

  set setUser(User user) {
    this._user = user;
    notifyListeners();
  }

  void setAge(int age) {
    this._user.age = age;
    notifyListeners();
  }

  void logout() {
    this._user = null;
    notifyListeners();
  }

  void addProfessions() {
    this._user.professions.add('Profession ${this._user.professions.length + 1}');
    notifyListeners();
  }

}