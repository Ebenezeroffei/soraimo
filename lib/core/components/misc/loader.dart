import 'package:flutter/material.dart';

class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.75),
              borderRadius: BorderRadius.circular(5),
            ),
            width: 80,
            height: 80,
            child: Image.asset(
              'assets/images/loader.png',
              scale: 2,
              alignment: Alignment.center,
            ),
          ),
        ),
      ),
    );
  }
}
