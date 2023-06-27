import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String email;
  final String username;
  final String name;
  final String surname;

  const User(this.id, this.email, this.username, this.name, this.surname);

  @override
  List<Object> get props => [id];
}
