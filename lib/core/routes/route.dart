import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soraimo/account/presentation/pages/login/login_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/auth':
        return goTo(LoginPage());
      default:
        return goTo(Text("Ok"));
    }
  }

  static Route<dynamic> goTo(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
