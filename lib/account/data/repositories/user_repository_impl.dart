import 'package:dartz/dartz.dart';
import 'package:soraimo/account/data/datasources/user_local_datasource.dart';
import 'package:soraimo/account/domains/entities/user.dart';
import 'package:soraimo/account/domains/repositories/user_repository.dart';
import 'package:soraimo/core/errors/exceptions.dart';
import 'package:soraimo/core/errors/failure.dart';

class UserRepositoryImpl implements UserRepository {
  final UserLocalDatasource localDataSource;

  UserRepositoryImpl(this.localDataSource);

  @override
  Future<Either<Failure, User>> login({
    required String email,
    required String password,
  }) async {
    try {
      final user =
          await localDataSource.login(email: email, password: password);
      return Right(user);
    } on CacheException catch (e) {
      return Left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, User>> register(
      {required String firstName,
      required String lastName,
      required String email,
      required String password}) async {
    try {
      final user = await localDataSource.register(
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
      );
      return Right(user);
    } on CacheException catch (e) {
      return Left(Failure(message: e.message));
    }
  }

  @override
  Future<Either<Failure, User>> resetPassword(
      {required String email, required String newPassword}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}
