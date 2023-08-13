// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationEventCopyWith<$Res> {
  factory $RegistrationEventCopyWith(
          RegistrationEvent value, $Res Function(RegistrationEvent) then) =
      _$RegistrationEventCopyWithImpl<$Res, RegistrationEvent>;
}

/// @nodoc
class _$RegistrationEventCopyWithImpl<$Res, $Val extends RegistrationEvent>
    implements $RegistrationEventCopyWith<$Res> {
  _$RegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UsernameFieldChangedCopyWith<$Res> {
  factory _$$_UsernameFieldChangedCopyWith(_$_UsernameFieldChanged value,
          $Res Function(_$_UsernameFieldChanged) then) =
      __$$_UsernameFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userString});
}

/// @nodoc
class __$$_UsernameFieldChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_UsernameFieldChanged>
    implements _$$_UsernameFieldChangedCopyWith<$Res> {
  __$$_UsernameFieldChangedCopyWithImpl(_$_UsernameFieldChanged _value,
      $Res Function(_$_UsernameFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userString = null,
  }) {
    return _then(_$_UsernameFieldChanged(
      null == userString
          ? _value.userString
          : userString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UsernameFieldChanged implements _UsernameFieldChanged {
  const _$_UsernameFieldChanged(this.userString);

  @override
  final String userString;

  @override
  String toString() {
    return 'RegistrationEvent.usernameFieldChanged(userString: $userString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsernameFieldChanged &&
            (identical(other.userString, userString) ||
                other.userString == userString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UsernameFieldChangedCopyWith<_$_UsernameFieldChanged> get copyWith =>
      __$$_UsernameFieldChangedCopyWithImpl<_$_UsernameFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return usernameFieldChanged(userString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return usernameFieldChanged?.call(userString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (usernameFieldChanged != null) {
      return usernameFieldChanged(userString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return usernameFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return usernameFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (usernameFieldChanged != null) {
      return usernameFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _UsernameFieldChanged implements RegistrationEvent {
  const factory _UsernameFieldChanged(final String userString) =
      _$_UsernameFieldChanged;

  String get userString;
  @JsonKey(ignore: true)
  _$$_UsernameFieldChangedCopyWith<_$_UsernameFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailFieldChangedCopyWith<$Res> {
  factory _$$_EmailFieldChangedCopyWith(_$_EmailFieldChanged value,
          $Res Function(_$_EmailFieldChanged) then) =
      __$$_EmailFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailString});
}

/// @nodoc
class __$$_EmailFieldChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_EmailFieldChanged>
    implements _$$_EmailFieldChangedCopyWith<$Res> {
  __$$_EmailFieldChangedCopyWithImpl(
      _$_EmailFieldChanged _value, $Res Function(_$_EmailFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailString = null,
  }) {
    return _then(_$_EmailFieldChanged(
      null == emailString
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailFieldChanged implements _EmailFieldChanged {
  const _$_EmailFieldChanged(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'RegistrationEvent.emailFieldChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailFieldChanged &&
            (identical(other.emailString, emailString) ||
                other.emailString == emailString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailFieldChangedCopyWith<_$_EmailFieldChanged> get copyWith =>
      __$$_EmailFieldChangedCopyWithImpl<_$_EmailFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return emailFieldChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return emailFieldChanged?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (emailFieldChanged != null) {
      return emailFieldChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return emailFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return emailFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (emailFieldChanged != null) {
      return emailFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailFieldChanged implements RegistrationEvent {
  const factory _EmailFieldChanged(final String emailString) =
      _$_EmailFieldChanged;

  String get emailString;
  @JsonKey(ignore: true)
  _$$_EmailFieldChangedCopyWith<_$_EmailFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordFieldChangedCopyWith<$Res> {
  factory _$$_PasswordFieldChangedCopyWith(_$_PasswordFieldChanged value,
          $Res Function(_$_PasswordFieldChanged) then) =
      __$$_PasswordFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordString});
}

/// @nodoc
class __$$_PasswordFieldChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_PasswordFieldChanged>
    implements _$$_PasswordFieldChangedCopyWith<$Res> {
  __$$_PasswordFieldChangedCopyWithImpl(_$_PasswordFieldChanged _value,
      $Res Function(_$_PasswordFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordString = null,
  }) {
    return _then(_$_PasswordFieldChanged(
      null == passwordString
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordFieldChanged implements _PasswordFieldChanged {
  const _$_PasswordFieldChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'RegistrationEvent.passwordFieldChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordFieldChanged &&
            (identical(other.passwordString, passwordString) ||
                other.passwordString == passwordString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordFieldChangedCopyWith<_$_PasswordFieldChanged> get copyWith =>
      __$$_PasswordFieldChangedCopyWithImpl<_$_PasswordFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return passwordFieldChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return passwordFieldChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (passwordFieldChanged != null) {
      return passwordFieldChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return passwordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return passwordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (passwordFieldChanged != null) {
      return passwordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordFieldChanged implements RegistrationEvent {
  const factory _PasswordFieldChanged(final String passwordString) =
      _$_PasswordFieldChanged;

  String get passwordString;
  @JsonKey(ignore: true)
  _$$_PasswordFieldChangedCopyWith<_$_PasswordFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmPasswordFieldChangedCopyWith<$Res> {
  factory _$$_ConfirmPasswordFieldChangedCopyWith(
          _$_ConfirmPasswordFieldChanged value,
          $Res Function(_$_ConfirmPasswordFieldChanged) then) =
      __$$_ConfirmPasswordFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String confirmPasswordString});
}

/// @nodoc
class __$$_ConfirmPasswordFieldChangedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$_ConfirmPasswordFieldChanged>
    implements _$$_ConfirmPasswordFieldChangedCopyWith<$Res> {
  __$$_ConfirmPasswordFieldChangedCopyWithImpl(
      _$_ConfirmPasswordFieldChanged _value,
      $Res Function(_$_ConfirmPasswordFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? confirmPasswordString = null,
  }) {
    return _then(_$_ConfirmPasswordFieldChanged(
      null == confirmPasswordString
          ? _value.confirmPasswordString
          : confirmPasswordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordFieldChanged implements _ConfirmPasswordFieldChanged {
  const _$_ConfirmPasswordFieldChanged(this.confirmPasswordString);

  @override
  final String confirmPasswordString;

  @override
  String toString() {
    return 'RegistrationEvent.confirmPasswordFieldChanged(confirmPasswordString: $confirmPasswordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPasswordFieldChanged &&
            (identical(other.confirmPasswordString, confirmPasswordString) ||
                other.confirmPasswordString == confirmPasswordString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, confirmPasswordString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmPasswordFieldChangedCopyWith<_$_ConfirmPasswordFieldChanged>
      get copyWith => __$$_ConfirmPasswordFieldChangedCopyWithImpl<
          _$_ConfirmPasswordFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return confirmPasswordFieldChanged(confirmPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return confirmPasswordFieldChanged?.call(confirmPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordFieldChanged != null) {
      return confirmPasswordFieldChanged(confirmPasswordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return confirmPasswordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return confirmPasswordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordFieldChanged != null) {
      return confirmPasswordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordFieldChanged implements RegistrationEvent {
  const factory _ConfirmPasswordFieldChanged(
      final String confirmPasswordString) = _$_ConfirmPasswordFieldChanged;

  String get confirmPasswordString;
  @JsonKey(ignore: true)
  _$$_ConfirmPasswordFieldChangedCopyWith<_$_ConfirmPasswordFieldChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ObscurePasswordToggledCopyWith<$Res> {
  factory _$$_ObscurePasswordToggledCopyWith(_$_ObscurePasswordToggled value,
          $Res Function(_$_ObscurePasswordToggled) then) =
      __$$_ObscurePasswordToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscurePasswordToggledCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_ObscurePasswordToggled>
    implements _$$_ObscurePasswordToggledCopyWith<$Res> {
  __$$_ObscurePasswordToggledCopyWithImpl(_$_ObscurePasswordToggled _value,
      $Res Function(_$_ObscurePasswordToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ObscurePasswordToggled implements _ObscurePasswordToggled {
  const _$_ObscurePasswordToggled();

  @override
  String toString() {
    return 'RegistrationEvent.obscurePasswordToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObscurePasswordToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return obscurePasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return obscurePasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (obscurePasswordToggled != null) {
      return obscurePasswordToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return obscurePasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return obscurePasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (obscurePasswordToggled != null) {
      return obscurePasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscurePasswordToggled implements RegistrationEvent {
  const factory _ObscurePasswordToggled() = _$_ObscurePasswordToggled;
}

/// @nodoc
abstract class _$$_ObscureConfirmPasswordToggledCopyWith<$Res> {
  factory _$$_ObscureConfirmPasswordToggledCopyWith(
          _$_ObscureConfirmPasswordToggled value,
          $Res Function(_$_ObscureConfirmPasswordToggled) then) =
      __$$_ObscureConfirmPasswordToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscureConfirmPasswordToggledCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res,
        _$_ObscureConfirmPasswordToggled>
    implements _$$_ObscureConfirmPasswordToggledCopyWith<$Res> {
  __$$_ObscureConfirmPasswordToggledCopyWithImpl(
      _$_ObscureConfirmPasswordToggled _value,
      $Res Function(_$_ObscureConfirmPasswordToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ObscureConfirmPasswordToggled
    implements _ObscureConfirmPasswordToggled {
  const _$_ObscureConfirmPasswordToggled();

  @override
  String toString() {
    return 'RegistrationEvent.obscureConfirmPasswordToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObscureConfirmPasswordToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return obscureConfirmPasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return obscureConfirmPasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (obscureConfirmPasswordToggled != null) {
      return obscureConfirmPasswordToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return obscureConfirmPasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return obscureConfirmPasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (obscureConfirmPasswordToggled != null) {
      return obscureConfirmPasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscureConfirmPasswordToggled implements RegistrationEvent {
  const factory _ObscureConfirmPasswordToggled() =
      _$_ObscureConfirmPasswordToggled;
}

/// @nodoc
abstract class _$$_RegistrationSubmittedCopyWith<$Res> {
  factory _$$_RegistrationSubmittedCopyWith(_$_RegistrationSubmitted value,
          $Res Function(_$_RegistrationSubmitted) then) =
      __$$_RegistrationSubmittedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasNotificationPermissions});
}

/// @nodoc
class __$$_RegistrationSubmittedCopyWithImpl<$Res>
    extends _$RegistrationEventCopyWithImpl<$Res, _$_RegistrationSubmitted>
    implements _$$_RegistrationSubmittedCopyWith<$Res> {
  __$$_RegistrationSubmittedCopyWithImpl(_$_RegistrationSubmitted _value,
      $Res Function(_$_RegistrationSubmitted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasNotificationPermissions = null,
  }) {
    return _then(_$_RegistrationSubmitted(
      null == hasNotificationPermissions
          ? _value.hasNotificationPermissions
          : hasNotificationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegistrationSubmitted implements _RegistrationSubmitted {
  const _$_RegistrationSubmitted(this.hasNotificationPermissions);

  @override
  final bool hasNotificationPermissions;

  @override
  String toString() {
    return 'RegistrationEvent.registrationSubmitted(hasNotificationPermissions: $hasNotificationPermissions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationSubmitted &&
            (identical(other.hasNotificationPermissions,
                    hasNotificationPermissions) ||
                other.hasNotificationPermissions ==
                    hasNotificationPermissions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasNotificationPermissions);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationSubmittedCopyWith<_$_RegistrationSubmitted> get copyWith =>
      __$$_RegistrationSubmittedCopyWithImpl<_$_RegistrationSubmitted>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) usernameFieldChanged,
    required TResult Function(String emailString) emailFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function(bool hasNotificationPermissions)
        registrationSubmitted,
  }) {
    return registrationSubmitted(hasNotificationPermissions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? usernameFieldChanged,
    TResult? Function(String emailString)? emailFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function(bool hasNotificationPermissions)? registrationSubmitted,
  }) {
    return registrationSubmitted?.call(hasNotificationPermissions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? usernameFieldChanged,
    TResult Function(String emailString)? emailFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function(bool hasNotificationPermissions)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (registrationSubmitted != null) {
      return registrationSubmitted(hasNotificationPermissions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UsernameFieldChanged value) usernameFieldChanged,
    required TResult Function(_EmailFieldChanged value) emailFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_RegistrationSubmitted value)
        registrationSubmitted,
  }) {
    return registrationSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult? Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_RegistrationSubmitted value)? registrationSubmitted,
  }) {
    return registrationSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UsernameFieldChanged value)? usernameFieldChanged,
    TResult Function(_EmailFieldChanged value)? emailFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_RegistrationSubmitted value)? registrationSubmitted,
    required TResult orElse(),
  }) {
    if (registrationSubmitted != null) {
      return registrationSubmitted(this);
    }
    return orElse();
  }
}

abstract class _RegistrationSubmitted implements RegistrationEvent {
  const factory _RegistrationSubmitted(final bool hasNotificationPermissions) =
      _$_RegistrationSubmitted;

  bool get hasNotificationPermissions;
  @JsonKey(ignore: true)
  _$$_RegistrationSubmittedCopyWith<_$_RegistrationSubmitted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationState {
  RegistrationUsernameField get username => throw _privateConstructorUsedError;
  RegistrationEmailField get email => throw _privateConstructorUsedError;
  RegistrationPasswordField get password => throw _privateConstructorUsedError;
  RegistrationConfirmPasswordField get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  Either<Failure, Success>? get registrationFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {RegistrationUsernameField username,
      RegistrationEmailField email,
      RegistrationPasswordField password,
      RegistrationConfirmPasswordField confirmPassword,
      bool isSubmitting,
      bool showErrorMessage,
      bool obscurePassword,
      bool obscureConfirmPassword,
      Either<Failure, Success>? registrationFailureOrSuccess});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? obscurePassword = null,
    Object? obscureConfirmPassword = null,
    Object? registrationFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as RegistrationUsernameField,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as RegistrationEmailField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegistrationPasswordField,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as RegistrationConfirmPasswordField,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: null == obscureConfirmPassword
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationFailureOrSuccess: freezed == registrationFailureOrSuccess
          ? _value.registrationFailureOrSuccess
          : registrationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationStateCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$_RegistrationStateCopyWith(_$_RegistrationState value,
          $Res Function(_$_RegistrationState) then) =
      __$$_RegistrationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegistrationUsernameField username,
      RegistrationEmailField email,
      RegistrationPasswordField password,
      RegistrationConfirmPasswordField confirmPassword,
      bool isSubmitting,
      bool showErrorMessage,
      bool obscurePassword,
      bool obscureConfirmPassword,
      Either<Failure, Success>? registrationFailureOrSuccess});
}

/// @nodoc
class __$$_RegistrationStateCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$_RegistrationState>
    implements _$$_RegistrationStateCopyWith<$Res> {
  __$$_RegistrationStateCopyWithImpl(
      _$_RegistrationState _value, $Res Function(_$_RegistrationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? obscurePassword = null,
    Object? obscureConfirmPassword = null,
    Object? registrationFailureOrSuccess = freezed,
  }) {
    return _then(_$_RegistrationState(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as RegistrationUsernameField,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as RegistrationEmailField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as RegistrationPasswordField,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as RegistrationConfirmPasswordField,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      obscurePassword: null == obscurePassword
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: null == obscureConfirmPassword
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      registrationFailureOrSuccess: freezed == registrationFailureOrSuccess
          ? _value.registrationFailureOrSuccess
          : registrationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_RegistrationState implements _RegistrationState {
  const _$_RegistrationState(
      {required this.username,
      required this.email,
      required this.password,
      required this.confirmPassword,
      this.isSubmitting = false,
      this.showErrorMessage = false,
      this.obscurePassword = true,
      this.obscureConfirmPassword = true,
      this.registrationFailureOrSuccess});

  @override
  final RegistrationUsernameField username;
  @override
  final RegistrationEmailField email;
  @override
  final RegistrationPasswordField password;
  @override
  final RegistrationConfirmPasswordField confirmPassword;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  @JsonKey()
  final bool obscurePassword;
  @override
  @JsonKey()
  final bool obscureConfirmPassword;
  @override
  final Either<Failure, Success>? registrationFailureOrSuccess;

  @override
  String toString() {
    return 'RegistrationState(username: $username, email: $email, password: $password, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, obscurePassword: $obscurePassword, obscureConfirmPassword: $obscureConfirmPassword, registrationFailureOrSuccess: $registrationFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationState &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.obscureConfirmPassword, obscureConfirmPassword) ||
                other.obscureConfirmPassword == obscureConfirmPassword) &&
            (identical(other.registrationFailureOrSuccess,
                    registrationFailureOrSuccess) ||
                other.registrationFailureOrSuccess ==
                    registrationFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      username,
      email,
      password,
      confirmPassword,
      isSubmitting,
      showErrorMessage,
      obscurePassword,
      obscureConfirmPassword,
      registrationFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      __$$_RegistrationStateCopyWithImpl<_$_RegistrationState>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
          {required final RegistrationUsernameField username,
          required final RegistrationEmailField email,
          required final RegistrationPasswordField password,
          required final RegistrationConfirmPasswordField confirmPassword,
          final bool isSubmitting,
          final bool showErrorMessage,
          final bool obscurePassword,
          final bool obscureConfirmPassword,
          final Either<Failure, Success>? registrationFailureOrSuccess}) =
      _$_RegistrationState;

  @override
  RegistrationUsernameField get username;
  @override
  RegistrationEmailField get email;
  @override
  RegistrationPasswordField get password;
  @override
  RegistrationConfirmPasswordField get confirmPassword;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  bool get obscurePassword;
  @override
  bool get obscureConfirmPassword;
  @override
  Either<Failure, Success>? get registrationFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationStateCopyWith<_$_RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}
