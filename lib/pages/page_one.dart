import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:status/bloc/user/user_cubit.dart';
import 'package:status/common/constants.dart';
import 'package:status/models/user.dart';

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          context.watch<UserCubit>().state is UserInitialState
              ? IconButton(icon: Icon(Icons.exit_to_app), onPressed: null)
              : IconButton(
                  icon: Icon(Icons.exit_to_app),
                  onPressed: () {
                    context.read<UserCubit>().logout();
                  })
        ],
        title: Text('Pagina 1'),
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_new),
        onPressed: () =>
            Navigator.pushNamed(context, Constants.pageTwoRouteName),
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (BuildContext context, state) {
        switch (state.runtimeType) {
          case UserInitialState:
            return Center(
              child: Text('No hay informacion del usuario'),
            );
            break;
          case ActivatedUser:
            return UserInformation((state as ActivatedUser).user);
            break;
          default:
            return Center(
              child: Text('No hay informacion del usuario'),
            );
        }
      },
    );
  }
}

class UserInformation extends StatelessWidget {
  final User user;

  const UserInformation(this.user) : super();

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
            title: Text('Nombre: ${user.name}'),
          ),
          ListTile(
            title: Text('Edad: ${user.age}'),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Divider(),
          ...user.professions
              .map((profession) => ListTile(
                    title: Text(profession),
                  ))
              .toList()
        ],
      ),
    );
  }
}
