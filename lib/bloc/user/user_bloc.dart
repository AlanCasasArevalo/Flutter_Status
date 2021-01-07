import 'package:bloc/bloc.dart';
import 'package:status/models/user.dart';
import 'package:meta/meta.dart';

part 'user_state.dart';

part 'user_events.dart';

class UserBloc extends Bloc<UserEvents, UserState> {
  UserBloc() : super(UserState());

  @override
  Stream<UserState> mapEventToState(UserEvents event) async* {
    print(event);
    if (event is SetUserEvent) {
      yield state.copyWith(user: event.user);
    } else if (event is ChangeUserAgeEvent) {
      yield state.copyWith(user: state.user.copyWith(age: event.age));
    } else if (event is AddNewProfessionEvent) {
      yield state.copyWith(
          user: state.user.copyWith(
              professions: [...state.user.professions, event.profession]));
    } else if (event is LogoutEvent) {
      yield state.initialState();
    }
  }
}
