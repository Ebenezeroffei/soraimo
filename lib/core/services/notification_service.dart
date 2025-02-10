import 'package:easy_notifications/easy_notifications.dart';
import 'package:flutter/material.dart';

class NotificationService {
  Future<void> init() async {
    debugPrint("⭐⭐⭐⭐⭐");
    debugPrint("Notification Enabled");
    await EasyNotifications.init();
  }

  Future<void> showNotification(
      {required String title, required String body, int? id}) async {
    await EasyNotifications.showMessage(
      title: title,
      body: body,
      id: id,
    );
  }
}
