import 'package:bloc/bloc.dart';
import 'package:status/models/user.dart';
import 'package:meta/meta.dart';
part 'user_state.dart';
part 'user_events.dart';

class UserBloc extends Bloc<SetUserEvent, UserState> {

  UserBloc() : super(UserState());

  @override
  Stream<UserState> mapEventToState(SetUserEvent event) {
    print('hollaaaaaaa');
  }
}