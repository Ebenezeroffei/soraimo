import 'package:dartz/dartz.dart';
import 'package:soraimo/account/domains/entities/user.dart';
import 'package:soraimo/account/domains/repositories/user_repository.dart';
import 'package:soraimo/core/errors/failure.dart';

class Register {
  final UserRepository repository;

  Register(this.repository);

  Future<Either<Failure, User>> execute({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async =>
      await repository.register(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
      );
}
