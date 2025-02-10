import 'package:hive/hive.dart';
import 'package:soraimo/account/domains/entities/user.dart';
import 'package:soraimo/core/errors/exceptions.dart';

abstract class UserLocalDatasource {
  Future<User> login({
    required String email,
    required String password,
  });

  Future<User> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  Future<User> resetPassword({
    required String email,
    required String newPassword,
  });
}

class UserLocalDataSourceImpl implements UserLocalDatasource {
  @override
  Future<User> login({required String email, required String password}) async {
    final userBox = await Hive.openBox('userBox');
    final users = userBox.values.toList();
    for (User user in users) {
      if (user.email == email && user.password == password) return user;
    }
    // return User(email: email, password: password);
    throw CacheException(message: "Invalid username and/or password.");
  }

  @override
  Future<User> register(
      {required String firstName,
      required String lastName,
      required String email,
      required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<User> resetPassword(
      {required String email, required String newPassword}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}
