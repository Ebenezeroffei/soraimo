import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: "Forgot Password",
        style: theme.textTheme.titleSmall?.copyWith(
          color: theme.colorScheme.primary,
        ),
        recognizer: TapGestureRecognizer()
          ..onTap = () => Navigator.pushNamed(
                context,
                '/auth/forgot-password',
              ),
      ),
    );
  }
}
