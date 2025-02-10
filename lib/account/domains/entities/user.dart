import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';
import 'package:equatable/equatable.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
// ignore: must_be_immutable
class User extends Equatable {
  @HiveField(0)
  String id;

  @HiveField(1)
  String? firstName;

  @HiveField(2)
  String? lastName;

  @HiveField(3)
  String email;

  @HiveField(4)
  String password;

  User({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
    String? id,
  }) : id = id ?? Uuid().v4();

  @override
  List<Object?> get props => [id, firstName, lastName, email, password];
}
