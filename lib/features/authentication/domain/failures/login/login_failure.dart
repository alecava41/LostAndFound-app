import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_failure.freezed.dart';

@freezed
class LoginFailure with _$LoginFailure {
  const factory LoginFailure.invalidCredentials() =_InvalidEmailAndPasswordCombination;
  const factory LoginFailure.serverError() = _ServerError;
  const factory LoginFailure.networkError() = _NetworkError;
}