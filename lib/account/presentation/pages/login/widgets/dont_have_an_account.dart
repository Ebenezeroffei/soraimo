import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: theme.textTheme.bodyMedium,
        text: "Don't have a soraimo account yet? ",
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // Navigator.pushNamed(context, '/auth/register'),
                print("Register");
              },
            text: "Register ",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
          TextSpan(text: "now!"),
        ],
      ),
    ).padB(50);
  }
}
