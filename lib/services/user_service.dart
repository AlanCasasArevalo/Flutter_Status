import 'package:status/models/user.dart';
import 'dart:async';

class _UserService {
  User _user;

  StreamController<User> _userStreamController = new StreamController<User>.broadcast();

  User get user => this._user;
  bool get isUserExists => (this._user != null) ? true : false;

  Stream<User> get userStream => _userStreamController.stream;

  void setUser (User user) {
    this._user = user;
    this._userStreamController.add(this._user);
  }

  void setUserAge(int age) {
    this._user.age = age;
    this._userStreamController.add(this._user);
  }

  dispose() {
    _userStreamController?.close();
  }
}

final userService = new _UserService();


