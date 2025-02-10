import 'package:dartz/dartz.dart';
import 'package:soraimo/account/domains/entities/user.dart';
import 'package:soraimo/account/domains/repositories/user_repository.dart';
import 'package:soraimo/core/errors/failure.dart';

class ResetPassword {
  final UserRepository repository;

  ResetPassword(this.repository);

  Future<Either<Failure, User>> execute({
    required String email,
    required String newPassword,
  }) async =>
      await repository.resetPassword(
        email: email,
        newPassword: newPassword,
      );
}
