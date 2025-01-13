import 'package:flutter/material.dart';
import 'package:soraimo/account/presentation/pages/login/widgets/dont_have_an_account.dart';
import 'package:soraimo/account/presentation/pages/login/widgets/forgot_password.dart';
import 'package:soraimo/account/presentation/utils/account_utils.dart';
import 'package:soraimo/core/components/buttons/custom_button.dart';
import 'package:soraimo/core/components/text_fields/custom_text_field.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class LoginPage extends StatelessWidget {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _isValid = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.chevron_left_rounded,
          size: 35,
        ),
        title: Image.asset(
          'assets/images/soraimo_logo.png',
          width: 120,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Form(
                key: _key,
                child: ListView(
                  children: [
                    Text(
                      "Log in to your soraimo account",
                      textAlign: TextAlign.center,
                      style: textTheme.titleLarge,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomTextField.email(
                      controller: _email,
                      label: "Please enter your email address.",
                      onChangeHandler: (value) => AccountUtils
                          .loginPageOnChangeHandlerCheckFormValidity(
                        _email.text,
                        _password.text,
                        _isValid,
                      ),
                    ),
                    CustomTextField.password(
                      controller: _password,
                      onChangeHandler: (value) => AccountUtils
                          .loginPageOnChangeHandlerCheckFormValidity(
                        _email.text,
                        _password.text,
                        _isValid,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ForgotPassword(),
                  ],
                ),
              ),
            ),
            ValueListenableBuilder(
              valueListenable: _isValid,
              builder: (_, value, __) => value
                  ? CustomButton.text(
                      onPressedHandler: () => AccountUtils.login(
                        _key,
                        _email,
                        _password,
                      ),
                      text: "Login",
                    )
                  : CustomButton.text(
                      text: "Login",
                    ),
            ),
            DontHaveAnAccount(),
          ],
        ).pad(10),
      ),
    );
  }
}
