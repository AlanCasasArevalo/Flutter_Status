part of 'user_bloc.dart';

@immutable
abstract class UserEvents {}

class SetUserEvent extends UserEvents {
  final User user;

  SetUserEvent(this.user);
}

class ChangeUserAgeEvent extends UserEvents {
  final int age;

  ChangeUserAgeEvent(this.age);
}

class AddNewProfessionEvent extends UserEvents {
  final String profession;

  AddNewProfessionEvent(this.profession);
}

class LogoutEvent extends UserEvents {
}
