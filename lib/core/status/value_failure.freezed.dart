// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure {
  String get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidUserLoginInput,
    required TResult Function(String failedValue) invalidPasswordLoginInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidUserLoginInput,
    TResult? Function(String failedValue)? invalidPasswordLoginInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidUserLoginInput,
    TResult Function(String failedValue)? invalidPasswordLoginInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserLogin value) invalidUserLoginInput,
    required TResult Function(_InvalidPasswordLogin value)
        invalidPasswordLoginInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidUserLogin value)? invalidUserLoginInput,
    TResult? Function(_InvalidPasswordLogin value)? invalidPasswordLoginInput,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserLogin value)? invalidUserLoginInput,
    TResult Function(_InvalidPasswordLogin value)? invalidPasswordLoginInput,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<ValueFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<$Res> {
  factory $ValueFailureCopyWith(
          ValueFailure value, $Res Function(ValueFailure) then) =
      _$ValueFailureCopyWithImpl<$Res, ValueFailure>;
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<$Res, $Val extends ValueFailure>
    implements $ValueFailureCopyWith<$Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_value.copyWith(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InvalidUserLoginCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$$_InvalidUserLoginCopyWith(
          _$_InvalidUserLogin value, $Res Function(_$_InvalidUserLogin) then) =
      __$$_InvalidUserLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$_InvalidUserLoginCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res, _$_InvalidUserLogin>
    implements _$$_InvalidUserLoginCopyWith<$Res> {
  __$$_InvalidUserLoginCopyWithImpl(
      _$_InvalidUserLogin _value, $Res Function(_$_InvalidUserLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$_InvalidUserLogin(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidUserLogin implements _InvalidUserLogin {
  const _$_InvalidUserLogin({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.invalidUserLoginInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidUserLogin &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidUserLoginCopyWith<_$_InvalidUserLogin> get copyWith =>
      __$$_InvalidUserLoginCopyWithImpl<_$_InvalidUserLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidUserLoginInput,
    required TResult Function(String failedValue) invalidPasswordLoginInput,
  }) {
    return invalidUserLoginInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidUserLoginInput,
    TResult? Function(String failedValue)? invalidPasswordLoginInput,
  }) {
    return invalidUserLoginInput?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidUserLoginInput,
    TResult Function(String failedValue)? invalidPasswordLoginInput,
    required TResult orElse(),
  }) {
    if (invalidUserLoginInput != null) {
      return invalidUserLoginInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserLogin value) invalidUserLoginInput,
    required TResult Function(_InvalidPasswordLogin value)
        invalidPasswordLoginInput,
  }) {
    return invalidUserLoginInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidUserLogin value)? invalidUserLoginInput,
    TResult? Function(_InvalidPasswordLogin value)? invalidPasswordLoginInput,
  }) {
    return invalidUserLoginInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserLogin value)? invalidUserLoginInput,
    TResult Function(_InvalidPasswordLogin value)? invalidPasswordLoginInput,
    required TResult orElse(),
  }) {
    if (invalidUserLoginInput != null) {
      return invalidUserLoginInput(this);
    }
    return orElse();
  }
}

abstract class _InvalidUserLogin implements ValueFailure {
  const factory _InvalidUserLogin({required final String failedValue}) =
      _$_InvalidUserLogin;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidUserLoginCopyWith<_$_InvalidUserLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InvalidPasswordLoginCopyWith<$Res>
    implements $ValueFailureCopyWith<$Res> {
  factory _$$_InvalidPasswordLoginCopyWith(_$_InvalidPasswordLogin value,
          $Res Function(_$_InvalidPasswordLogin) then) =
      __$$_InvalidPasswordLoginCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String failedValue});
}

/// @nodoc
class __$$_InvalidPasswordLoginCopyWithImpl<$Res>
    extends _$ValueFailureCopyWithImpl<$Res, _$_InvalidPasswordLogin>
    implements _$$_InvalidPasswordLoginCopyWith<$Res> {
  __$$_InvalidPasswordLoginCopyWithImpl(_$_InvalidPasswordLogin _value,
      $Res Function(_$_InvalidPasswordLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = null,
  }) {
    return _then(_$_InvalidPasswordLogin(
      failedValue: null == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InvalidPasswordLogin implements _InvalidPasswordLogin {
  const _$_InvalidPasswordLogin({required this.failedValue});

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure.invalidPasswordLoginInput(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InvalidPasswordLogin &&
            (identical(other.failedValue, failedValue) ||
                other.failedValue == failedValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failedValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InvalidPasswordLoginCopyWith<_$_InvalidPasswordLogin> get copyWith =>
      __$$_InvalidPasswordLoginCopyWithImpl<_$_InvalidPasswordLogin>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String failedValue) invalidUserLoginInput,
    required TResult Function(String failedValue) invalidPasswordLoginInput,
  }) {
    return invalidPasswordLoginInput(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String failedValue)? invalidUserLoginInput,
    TResult? Function(String failedValue)? invalidPasswordLoginInput,
  }) {
    return invalidPasswordLoginInput?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String failedValue)? invalidUserLoginInput,
    TResult Function(String failedValue)? invalidPasswordLoginInput,
    required TResult orElse(),
  }) {
    if (invalidPasswordLoginInput != null) {
      return invalidPasswordLoginInput(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidUserLogin value) invalidUserLoginInput,
    required TResult Function(_InvalidPasswordLogin value)
        invalidPasswordLoginInput,
  }) {
    return invalidPasswordLoginInput(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidUserLogin value)? invalidUserLoginInput,
    TResult? Function(_InvalidPasswordLogin value)? invalidPasswordLoginInput,
  }) {
    return invalidPasswordLoginInput?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidUserLogin value)? invalidUserLoginInput,
    TResult Function(_InvalidPasswordLogin value)? invalidPasswordLoginInput,
    required TResult orElse(),
  }) {
    if (invalidPasswordLoginInput != null) {
      return invalidPasswordLoginInput(this);
    }
    return orElse();
  }
}

abstract class _InvalidPasswordLogin implements ValueFailure {
  const factory _InvalidPasswordLogin({required final String failedValue}) =
      _$_InvalidPasswordLogin;

  @override
  String get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$_InvalidPasswordLoginCopyWith<_$_InvalidPasswordLogin> get copyWith =>
      throw _privateConstructorUsedError;
}
