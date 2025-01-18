import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: theme.textTheme.bodyMedium,
        text: "Already have soraimo account? ",
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () => Navigator.pushNamed(context, '/auth'),
            text: "Login here",
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ],
      ),
    ).padB(50);
  }
}
