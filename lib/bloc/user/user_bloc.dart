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
      yield UserState(userPassed: event.user);
    } else if (event is ChangeUserAgeEvent) {
      yield UserState(userPassed: state.user.copyWith(age: event.age));
    }else if (event is AddNewProfessionEvent) {
      final professions = state.user.professions;
      professions.insert(professions.length, event.profession);
      yield UserState(userPassed: state.user.copyWith(professions: professions));
    }
  }
}
