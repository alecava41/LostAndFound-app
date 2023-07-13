
import 'package:equatable/equatable.dart';

abstract class Success extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends Success {}
class LogoutSuccess extends Success {}
class RegistrationSuccess extends Success {}
class UserItemsLoadSuccess extends Success {}
class NewsLoadSuccess extends Success {}