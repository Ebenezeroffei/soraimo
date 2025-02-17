import 'package:flutter/material.dart';
import 'package:soraimo/core/components/misc/loader.dart';

class MiscUtils {
  static Future<void> showLoader(BuildContext context) async {
    await showDialog(
      context: context,
      barrierColor: Colors.transparent,
      barrierDismissible: false,
      builder: (_) => Loader(),
    );
  }

  static void hideLoader(BuildContext context) => Navigator.pop(context);
}
