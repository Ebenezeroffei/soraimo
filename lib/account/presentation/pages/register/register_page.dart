import 'package:flutter/material.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/already_have_an_account.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/login_information.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/personal_information.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/subscribe_to_newsletter.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/user_agreement_and_privacy_policy.dart';
import 'package:soraimo/core/components/buttons/custom_button.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _verificationCode = TextEditingController();
  final _password1 = TextEditingController();
  final _password2 = TextEditingController();
  final _subscribeToNewsLetter = ValueNotifier<bool>(false);
  final _accepted = ValueNotifier<bool>(false);

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
      body: Column(
        children: [
          Expanded(
            child: Form(
              child: ListView(
                children: [
                  Text(
                    "Create your exclusive soraimo account",
                    textAlign: TextAlign.center,
                    style: textTheme.titleLarge,
                  ),
                  PersonalInformation(
                    firstName: _firstName,
                    lastName: _lastName,
                  ),
                  SubscribeToNewsletter(
                    subscribeToNewsLetter: _subscribeToNewsLetter,
                  ),
                  LoginInformation(
                    email: _email,
                    verificationCode: _verificationCode,
                    password1: _password1,
                    password2: _password2,
                  ),
                ],
              ),
            ),
          ),
          UserAgreementAndPrivacyPolicy(
            accepted: _accepted,
          ),
          CustomButton.text(text: "Register"),
          AlreadyHaveAnAccount(),
        ],
      ).pad(10),
    );
  }
}
