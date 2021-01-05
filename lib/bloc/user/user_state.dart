part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitialState extends UserState {
  final isUserExists = false;
}

class ActivatedUser extends UserState {
  final isUserExists = true;
  final User user;

  ActivatedUser(this.user);
}