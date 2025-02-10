import 'dart:math';

import 'package:flutter/material.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/already_have_an_account.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/login_information.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/personal_information.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/subscribe_to_newsletter.dart';
import 'package:soraimo/account/presentation/pages/register/widgets/user_agreement_and_privacy_policy.dart';
import 'package:soraimo/account/presentation/utils/account_utils.dart';
import 'package:soraimo/core/components/buttons/custom_button.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  final _firstName = TextEditingController();

  final _lastName = TextEditingController();

  final _email = TextEditingController();

  final _verificationCode = TextEditingController();

  final _password1 = TextEditingController();

  final _password2 = TextEditingController();

  final _subscribeToNewsLetter = ValueNotifier<bool>(false);

  final _acceptAgreement = ValueNotifier<bool>(false);

  final _isValid = ValueNotifier<bool>(false);

  _registerPageOnChangeHandlerCheckFormValidity() =>
      AccountUtils.registerPageOnChangeHandlerCheckFormValidity(
        firstName: _firstName.text,
        lastName: _lastName.text,
        email: _email.text,
        verificationCode: _verificationCode.text,
        password1: _password1.text,
        password2: _password2.text,
        subscribeToNewsLetter: _subscribeToNewsLetter.value,
        acceptAgreement: _acceptAgreement.value,
        isValid: _isValid,
      );

  @override
  void initState() {
    super.initState();
    _firstName.addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _lastName.addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _email.addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _verificationCode
        .addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _password1.addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _password2.addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _subscribeToNewsLetter
        .addListener(_registerPageOnChangeHandlerCheckFormValidity);
    _acceptAgreement.addListener(_registerPageOnChangeHandlerCheckFormValidity);
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _verificationCode.dispose();
    _password1.dispose();
    _password2.dispose();
    _subscribeToNewsLetter.dispose();
    _acceptAgreement.dispose();
    _isValid.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final otp = Random().nextInt(555555) + 444444;
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
              key: _formKey,
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
                    otp: otp,
                  ),
                ],
              ),
            ),
          ),
          UserAgreementAndPrivacyPolicy(
            acceptAgreement: _acceptAgreement,
          ),
          ValueListenableBuilder(
            valueListenable: _isValid,
            builder: (_, value, __) => CustomButton.text(
              text: "Register",
              onPressedHandler: value
                  ? () => AccountUtils.register(
                        key: _formKey,
                        firstName: _firstName.text,
                        lastName: _lastName.text,
                        email: _email.text,
                        otp: otp.toString(),
                        verificationCode: _verificationCode.text,
                        password: _password1.text,
                        context: context,
                      )
                  : null,
            ),
          ),
          AlreadyHaveAnAccount(),
        ],
      ).pad(10),
    );
  }
}
