
import 'package:equatable/equatable.dart';

abstract class Success extends Equatable {
  @override
  List<Object> get props => [];
}

class LoginSuccess extends Success {}
class LogoutSuccess extends Success {}