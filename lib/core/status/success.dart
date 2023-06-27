
import 'package:equatable/equatable.dart';

abstract class Success extends Equatable {
  @override
  List<Object> get props => [];
}

// General failures
class AuthenticationSuccess extends Success {}