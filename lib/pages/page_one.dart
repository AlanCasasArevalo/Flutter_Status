import 'package:flutter/material.dart';
import 'package:status/common/constants.dart';
import 'package:status/models/user.dart';
import 'package:status/services/user_service.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
          return snapshot.hasData ? UserInformation(userService.user) : Center(child: Text('No hay usuario'),);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () =>
            Navigator.pushNamed(context, Constants.pageTwoRouteName),
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  final User user;

  const UserInformation(this.user);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre: ${this.user.name}'),
          ),
          ListTile(
            title: Text('Edad: ${this.user.age}'),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Divider(),
          ListTile(
            title: Text('Profesion 1'),
          ),
          ListTile(
            title: Text('Profesion 2'),
          ),
          ListTile(
            title: Text('Profesion 3'),
          ),
        ],
      ),
    );
  }
}
