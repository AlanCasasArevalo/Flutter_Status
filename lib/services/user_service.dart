import 'package:status/models/user.dart';

class _UserService {
  User _user;
  User get user => this._user;
  bool get isUserExists => (this._user != null) ? true : false;
  void setUser (User user) {
    this._user = user;
  }

  void setUserAge(int age) {
    this._user.age = age;
  }
}

final userService = new _UserService();


