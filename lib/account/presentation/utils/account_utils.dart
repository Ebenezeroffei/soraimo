import 'package:flutter/material.dart';
import 'package:soraimo/core/validators/validators.dart';

class AccountUtils {
  // Login
  static loginPageOnChangeHandlerCheckFormValidity({
    required String email,
    required String password,
    required ValueNotifier<bool> isValid,
  }) =>
      isValid.value = (Validators.email.hasMatch(email) &&
          Validators.password.hasMatch(password));

  static void login({
    required GlobalKey<FormState> key,
    required TextEditingController email,
    required TextEditingController password,
  }) {
    if (key.currentState!.validate()) {
      print("Nice");
    } else {
      print("Not nice");
    }
  }

  // Register
  static void registerPageOnChangeHandlerCheckFormValidity({
    required String firstName,
    required String lastName,
    required String email,
    required String verificationCode,
    required String password1,
    required String password2,
    required bool subscribeToNewsLetter,
    required bool acceptAgreement,
    required ValueNotifier<bool> isValid,
  }) =>
      isValid.value = firstName.isNotEmpty &&
          lastName.isNotEmpty &&
          Validators.email.hasMatch(email) &&
          verificationCode.length == 6 &&
          Validators.password.hasMatch(password1) &&
          password2.isNotEmpty &&
          password1 == password2 &&
          subscribeToNewsLetter &&
          acceptAgreement;

  static void register({
    required GlobalKey<FormState> key,
    required String firstName,
    required String lastName,
    required String email,
    required String verificationCode,
    required String password,
  }) {
    if (key.currentState!.validate()) {
      print("Nice");
    } else {
      print("Not nice");
    }
  }

  // Forgot Password
  static void forgotPasswordPageOnChangeHandlerCheckFormValidity({
    required String email,
    required String verificationCode,
    required String password1,
    required String password2,
    required ValueNotifier<bool> isValid,
  }) =>
      isValid.value = Validators.email.hasMatch(email) &&
          verificationCode.length == 6 &&
          Validators.password.hasMatch(password1) &&
          password2.isNotEmpty &&
          password1 == password2;

  static void forgotPassword({
    required GlobalKey<FormState> key,
    required String email,
    required String verificationCode,
    required String password,
  }) {
    if (key.currentState!.validate()) {
      print("Nice");
    } else {
      print("Not nice");
    }
  }
}
