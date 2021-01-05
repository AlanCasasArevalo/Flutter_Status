import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:status/bloc/user/user_cubit.dart';
import 'package:status/models/user.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _userCubit = context.watch<UserCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                final newUser = new User(
                  name: 'Alan',
                  age: 40,
                  professions: [
                    'iOS Developer',
                    'Node Developer',
                    'Flutter Developer'
                  ]
                );
                _userCubit.selectedUser(newUser);
                Navigator.pop(context);
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                _userCubit.changeAge(20);
                Navigator.pop(context);
              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                _userCubit.addProfession();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
