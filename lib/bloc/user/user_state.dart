part of 'user_bloc.dart';
class UserState {
  final bool isUserExists;
  final User user;

  UserState({User userPassed}) : user = userPassed ?? null,
  isUserExists = (userPassed != null) ? true : false;
}