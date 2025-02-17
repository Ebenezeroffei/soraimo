import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:soraimo/account/data/datasources/user_local_datasource.dart';
import 'package:soraimo/account/data/repositories/user_repository_impl.dart';
import 'package:soraimo/account/domains/usecases/login.dart';
import 'package:soraimo/account/domains/usecases/register.dart';
import 'package:soraimo/account/domains/usecases/reset_password.dart';
import 'package:soraimo/core/extensions/extensions.dart';
import 'package:soraimo/core/services/toast_service.dart';
import 'package:soraimo/core/utils/misc_utils.dart';
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
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    if (key.currentState!.validate()) {
      MiscUtils.showLoader(context);
      final localDataSource = UserLocalDataSourceImpl();
      final repository = UserRepositoryImpl(localDataSource);
      final login = Login(repository);
      final res = await login.execute(
        email: email,
        password: password,
      );
      MiscUtils.hideLoader(context);
      res.fold((l) => ToastService.error(l.message), (user) {
        ToastService.success("Login successful");
        Navigator.pushNamed(context, '/');
      });
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
    required String otp,
    required String password,
    required BuildContext context,
  }) async {
    if (otp != verificationCode) {
      ToastService.warning("Invalid verification code.");
    } else if (key.currentState!.validate()) {
      MiscUtils.showLoader(context);
      final localDataSource = UserLocalDataSourceImpl();
      final repository = UserRepositoryImpl(localDataSource);
      final register = Register(repository);
      final res = await register.execute(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
      );
      MiscUtils.hideLoader(context);
      res.fold((l) => ToastService.error(l.message), (_) {
        ToastService.success("Registration successful.");
        Navigator.pushNamed(context, '/auth');
      });
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
    required String otp,
    required String password,
    required BuildContext context,
  }) async {
    if (otp != verificationCode) {
      ToastService.warning("Invalid verification code.");
    } else if (key.currentState!.validate()) {
      MiscUtils.showLoader(context);
      final localDataSource = UserLocalDataSourceImpl();
      final repository = UserRepositoryImpl(localDataSource);
      final resetPassword = ResetPassword(repository);
      final res = await resetPassword.execute(
        email: email,
        newPassword: password,
      );
      MiscUtils.hideLoader(context);
      res.fold((l) => ToastService.error(l.message), (_) {
        ToastService.success("Password reset successful.");
        Navigator.pushNamed(context, '/auth');
      });
    }
  }
}
