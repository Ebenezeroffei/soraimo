import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastService {
  static Future<void> info(String text) async {
    await show(text: text);
  }

  static Future<void> error(String text) async {
    await show(
      text: text,
      backgroundColor: Colors.red.shade500,
    );
  }

  static Future<void> success(String text) async {
    await show(
      text: text,
      backgroundColor: Colors.green,
    );
  }

  static Future<void> warning(String text) async {
    await show(
      text: text,
      backgroundColor: Colors.yellow.shade800,
      textColor: Colors.black,
    );
  }

  static Future<void> show({
    required String text,
    Color? backgroundColor = Colors.blueGrey,
    Color? textColor = Colors.white,
  }) async {
    await Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: 12.5,
    );
  }
}
