import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Error",
          style: TextStyle(
            fontSize: 60,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
