import '../validators/validators.dart';

extension StringExtension on String {
  bool isEmail() => Validators.email.hasMatch(this);

  bool isPassword() => Validators.password.hasMatch(this);

  bool isNumber() => Validators.number.hasMatch(this);
}
