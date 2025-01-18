import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:soraimo/account/presentation/pages/login/login_page.dart';
import 'package:soraimo/account/presentation/pages/register/register_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/auth':
        return goTo(LoginPage());
      case '/auth/register':
        return goTo(RegisterPage());
      default:
        return goTo(Text("Ok"));
    }
  }

  static Route<dynamic> goTo(Widget page) =>
      MaterialPageRoute(builder: (_) => page);
}
