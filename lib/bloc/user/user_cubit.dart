import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:status/models/user.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {

  UserCubit() : super(UserInitialState());

  void selectedUser(User user) {
    emit(new ActivatedUser(user));
  }

  void changeAge(int age) {
    final currentState = state;
    if (currentState is ActivatedUser) {
      final newUser = currentState.user.copyWith(age: age);
      emit(ActivatedUser(newUser));
    }
  }

  void addProfession() {
    final currentState = state;
    if (currentState is ActivatedUser) {
      final professions = [
        ...currentState.user.professions,
        'Profession ${currentState.user.professions.length+1}'
      ];
      final newUser = currentState.user.copyWith(professions: professions);
      emit(ActivatedUser(newUser));
    }
  }

  void logout () {
    emit(UserInitialState());
  }
}