import 'package:flutter/material.dart';
import 'package:soraimo/core/validators/validators.dart';

class AccountUtils {
  static loginPageOnChangeHandlerCheckFormValidity(
    String email,
    String password,
    ValueNotifier<bool> isValid,
  ) =>
      isValid.value = (Validators.email.hasMatch(email) &&
          Validators.password.hasMatch(password));

  static void login(
    GlobalKey<FormState> key,
    TextEditingController email,
    TextEditingController password,
  ) {
    if (key.currentState!.validate()) {
      print("Nice");
    } else {
      print("Not nice");
    }
  }
}
