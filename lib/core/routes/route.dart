import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soraimo/main.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    return goTo(MyHomePage(title: "Hello"));
  }

  static Route<dynamic> goTo(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
