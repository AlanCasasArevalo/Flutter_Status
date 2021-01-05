import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status/models/user.dart';
import 'package:status/services/user_service.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  age: 40
                );
                final userService = Provider.of<UserService>(context, listen: false);
                userService.setUser = newUser;
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {},
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
