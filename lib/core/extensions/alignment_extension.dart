import 'package:flutter/material.dart';

extension AlignmentExtension on Widget {
  Align toCenter() => Align(
        alignment: Alignment.center,
        child: this,
      );

  Align toLeft() => Align(
        alignment: Alignment.centerLeft,
        child: this,
      );

  Align toRight() => Align(
        alignment: Alignment.centerRight,
        child: this,
      );

  Align toTop() => Align(
        alignment: Alignment.bottomCenter,
        child: this,
      );

  Align toBottom() => Align(
        alignment: Alignment.topCenter,
        child: this,
      );
}
