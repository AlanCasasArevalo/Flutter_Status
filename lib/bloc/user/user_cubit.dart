import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:status/models/user.dart';
part 'user_state.dart';

class UserCubit extends Cubit<UserState> {

  UserCubit() : super(UserInitialState());

  void selectedUser(User user) {
    emit(new ActivatedUser(user));
  }
}