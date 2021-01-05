import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:status/routes/routes.dart';
import 'package:status/services/user_service.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context) => new UserService()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: getDefaultRouteApplications(),
        routes: getApplications(),
      ),
    );
  }
}
