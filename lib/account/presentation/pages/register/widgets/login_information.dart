import 'package:flutter/material.dart';
import 'package:soraimo/core/components/text_fields/custom_text_field.dart';
import 'package:soraimo/core/extensions/alignment_extension.dart';

class LoginInformation extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController verificationCode;
  final TextEditingController password1;
  final TextEditingController password2;

  const LoginInformation({
    super.key,
    required this.email,
    required this.verificationCode,
    required this.password1,
    required this.password2,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Login information",
          textAlign: TextAlign.left,
        ).toLeft(),
        CustomTextField.email(
          controller: email,
          label: 'Please enter your email',
        ),
        Row(
          spacing: 10,
          children: [
            Expanded(
              child: CustomTextField.number(
                controller: verificationCode,
                label: 'Please enter your verification code',
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                ),
                backgroundColor: Colors.grey,
              ),
              child: Text(
                "Get \n Verificat...",
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall?.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
        CustomTextField.password(
          controller: password1,
          label: 'Enter your password',
          helperText:
              'The password must be 6 - 16 characters long and include both numbers and letters,',
        ),
        CustomTextField.password(
          controller: password1,
          label: 'Please confirm the password again',
        ),
      ],
    );
  }
}
