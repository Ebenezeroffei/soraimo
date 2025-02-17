import 'package:flutter/material.dart';
import 'package:soraimo/core/extensions/padding_extention.dart';
import 'package:theme_provider/theme_provider.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressedHandler;
  final Widget child;

  const CustomButton({
    super.key,
    required this.onPressedHandler,
    required this.child,
  });

  factory CustomButton.text({
    VoidCallback? onPressedHandler,
    required String text,
  }) {
    final textWidget = Text(text);
    return CustomButton(
      onPressedHandler: onPressedHandler,
      child: textWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedHandler,
      child: child,
    ).padY(20);
  }
}
