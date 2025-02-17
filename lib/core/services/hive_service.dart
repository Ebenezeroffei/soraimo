import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:soraimo/account/domains/entities/user.dart';

class HiveService {
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
    await Hive.openBox<User>('userBox');
  }
}
