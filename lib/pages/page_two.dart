import 'package:flutter/material.dart';
import 'package:status/models/user.dart';
import 'package:status/services/user_service.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
            return snapshot.hasData ? Text('Name: ${snapshot.data.name}') : Text('Page Two');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                final newUser = new User(name: 'Alan', age: 40);
                userService.setUser(newUser);
              },
            ),
            MaterialButton(
              child: Text('Cambiar edad', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                if(!userService.isUserExists) return;
                userService.setUserAge(20);
              },
            ),
            MaterialButton(
              child: Text('Agregar Profesion', style: TextStyle(color: Colors.white),),
              color: Colors.blue,
              onPressed: () {
                if(!userService.isUserExists) return;

              },
            ),
          ],
        ),
      ),
    );
  }
}
