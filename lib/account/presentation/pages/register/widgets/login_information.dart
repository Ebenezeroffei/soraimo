import 'package:flutter/material.dart';
import 'package:soraimo/core/components/text_fields/custom_text_field.dart';
import 'package:soraimo/core/extensions/alignment_extension.dart';
import 'package:soraimo/core/extensions/extensions.dart';
import 'package:soraimo/core/services/notification_service.dart';

class LoginInformation extends StatelessWidget {
  final TextEditingController email;
  final TextEditingController verificationCode;
  final TextEditingController password1;
  final TextEditingController password2;
  final bool showSectionTitle;
  final int otp;

  const LoginInformation({
    super.key,
    required this.email,
    required this.verificationCode,
    required this.password1,
    required this.password2,
    bool? showSectionTitle,
    required this.otp,
  }) : showSectionTitle = showSectionTitle ?? true;

  String? _password2Validator(String? value) {
    if (value != null && password1.text == value) {
      return null;
    }
    return "Both passwords should be the same";
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    String? verificationCodeValidator(String? value) {
      if (value != null && value.length == 6) {
        return null;
      }
      return 'Code should be 6 digits long';
    }

    return Column(
      children: [
        if (showSectionTitle)
          SizedBox(
            height: 20,
          ),
        if (showSectionTitle)
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: CustomTextField.number(
                controller: verificationCode,
                label: 'Please enter your verification code',
                validator: verificationCodeValidator,
                helperText: "Code should be six digits long.",
              ),
            ),
            TextButton(
              onPressed: () async =>
                  await NotificationService().showNotification(
                title: "One Time Password",
                body: otp.toString(),
                id: 200,
              ),
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
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white,
                ),
              ),
            ).padT(7),
          ],
        ),
        CustomTextField.password(
          controller: password1,
          label: 'Enter your password',
          helperText:
              'The password must be 6 - 16 characters long and include both numbers and letters,',
        ),
        CustomTextField.password(
          controller: password2,
          label: 'Please confirm the password again',
          validator: _password2Validator,
        ),
      ],
    );
  }
}
