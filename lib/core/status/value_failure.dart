import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.invalidUserLoginInput({
    required String failedValue,
  }) = _InvalidUserLogin;

  const factory ValueFailure.invalidPasswordLoginInput({
    required String failedValue,
  }) = _InvalidPasswordLogin;
}
