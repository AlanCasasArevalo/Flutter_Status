import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status/models/user.dart';
import 'package:status/services/user_service.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final _userService = Provider.of<UserService>(context);

    return Scaffold(
      appBar: AppBar(
        title: _userService.isUserExists ? Text('Nombre: ${_userService.user.name}') : Text('Pagina 2'),
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
                  age: 40
                );
                _userService.setUser = newUser;
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                if(_userService.isUserExists) {
                  _userService.setAge(20);
                } else {
                  return;
                }
              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
