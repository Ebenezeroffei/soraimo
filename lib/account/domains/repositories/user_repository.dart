import 'package:dartz/dartz.dart';
import 'package:soraimo/account/domains/entities/user.dart';
import 'package:soraimo/core/errors/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> register({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  });

  Future<Either<Failure, User>> resetPassword({
    required String email,
    required String newPassword,
  });
}
