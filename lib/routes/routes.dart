import 'package:flutter/material.dart';
import 'package:status/common/constants.dart';
import 'package:status/pages/page_one.dart';
import 'package:status/pages/page_two.dart';

Map<String, WidgetBuilder> getApplications() {
  return routes;
}

final routes = <String, WidgetBuilder>{
  Constants.pageOneRouteName: (BuildContext context) => PageOne(),
  Constants.pageTwoRouteName: (BuildContext context) => PageTwo(),
};

MaterialPageRoute<dynamic> Function(RouteSettings)
    getDefaultRouteApplications() {
  return defaultRoute;
}

final defaultRoute = (RouteSettings settings) => MaterialPageRoute(
      builder: (BuildContext context) => PageOne(),
    );
