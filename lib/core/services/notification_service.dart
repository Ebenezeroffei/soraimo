import 'package:easy_notifications/easy_notifications.dart';

class NotificationService {
  Future<void> init() async => await EasyNotifications.init();

  Future<void> showNotification({
    required String title,
    required String body,
    int? id,
  }) async {
    await EasyNotifications.showMessage(
      title: title,
      body: body,
      id: id,
    );
  }
}
