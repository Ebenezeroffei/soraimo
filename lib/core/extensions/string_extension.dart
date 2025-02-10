import 'dart:convert';

import 'package:crypto/crypto.dart';

import '../validators/validators.dart';

extension StringExtension on String {
  bool isEmail() => Validators.email.hasMatch(this);

  bool isPassword() => Validators.password.hasMatch(this);

  bool isNumber() => Validators.number.hasMatch(this);

  String hash() {
    final bytes = utf8.encode(this);
    return sha256.convert(bytes).toString();
  }
}
