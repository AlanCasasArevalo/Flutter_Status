import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:status/bloc/user/user_bloc.dart';
import 'package:status/models/user.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: close_sinks
    final userBloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                final newUser = new User(name: 'Alan', age: 40, professions: [
                  'iOS Developer',
                  'Node Developer',
                  'Flutter Developer'
                ]);
                userBloc.add(SetUserEvent(newUser));
                Navigator.pop(context);
              },
            ),
            MaterialButton(
              child: Text(
                'Cambiar edad',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(ChangeUserAgeEvent(90));
                Navigator.pop(context);
              },
            ),
            MaterialButton(
              child: Text(
                'Agregar Profesion',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                userBloc.add(
                    AddNewProfessionEvent('Jugador de poker')
                );
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
