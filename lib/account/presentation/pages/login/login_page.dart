import 'package:flutter/material.dart';
import 'package:soraimo/account/presentation/pages/login/widgets/dont_have_an_account.dart';
import 'package:soraimo/core/components/buttons/custom_button.dart';
import 'package:soraimo/core/components/text_fields/custom_text_field.dart';
import 'package:soraimo/core/extensions/extensions.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final email = TextEditingController();
    final password = TextEditingController();

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
                child: ListView(
              children: [
                Text(
                  "Log in to your soraimo account",
                  textAlign: TextAlign.center,
                  style: textTheme.titleLarge,
                )
              ],
            )),
            CustomButton.text(
              onPressedHandler: () {},
              text: "Login",
            ),
            DontHaveAnAccount(),
          ],
        ).pad(10),
      ),
    );
  }
}
