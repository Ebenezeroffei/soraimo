import 'dart:math';

import 'package:flutter/material.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/login_information.dart';
import 'package:soraimo/account/presentation/utils/account_utils.dart';
import 'package:soraimo/core/components/buttons/custom_button.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();
  final _verificationCode = TextEditingController();
  final _password1 = TextEditingController();
  final _password2 = TextEditingController();

  final _isValid = ValueNotifier(false);
  _forgotPasswordPageOnChangeHandlerCheckFormValidity() =>
      AccountUtils.forgotPasswordPageOnChangeHandlerCheckFormValidity(
        email: _email.text,
        verificationCode: _verificationCode.text,
        password1: _password1.text,
        password2: _password2.text,
        isValid: _isValid,
      );

  @override
  void initState() {
    super.initState();
    _email.addListener(_forgotPasswordPageOnChangeHandlerCheckFormValidity);
    _verificationCode
        .addListener(_forgotPasswordPageOnChangeHandlerCheckFormValidity);
    _password1.addListener(_forgotPasswordPageOnChangeHandlerCheckFormValidity);
    _password2.addListener(_forgotPasswordPageOnChangeHandlerCheckFormValidity);
  }

  @override
  void dispose() {
    _email.dispose();
    _verificationCode.dispose();
    _password1.dispose();
    _password2.dispose();
    _isValid.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final otp = Random().nextInt(555555) + 444444;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.chevron_left_rounded,
          size: 35,
        ),
        title: Text("Forgot Password"),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Please enter your email address to reset your password.",
                  ),
                  LoginInformation(
                    email: _email,
                    verificationCode: _verificationCode,
                    password1: _password1,
                    password2: _password2,
                    showSectionTitle: false,
                    otp: otp,
                  ),
                ],
              ),
            ),
            ValueListenableBuilder(
                valueListenable: _isValid,
                builder: (_, value, __) => CustomButton.text(
                      text: "Submit",
                      onPressedHandler: value
                          ? () => AccountUtils.forgotPassword(
                                key: _formKey,
                                email: _email.text,
                                otp: otp.toString(),
                                verificationCode: _verificationCode.text,
                                password: _password1.text,
                                context: context,
                              )
                          : null,
                    )),
          ],
        ),
      ).pad(15),
    );
  }
}
