import 'package:flutter/material.dart';
import 'package:status/routes/routes.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: getDefaultRouteApplications(),
      routes: getApplications(),
    );
  }
}
