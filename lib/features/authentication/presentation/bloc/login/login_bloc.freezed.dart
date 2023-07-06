// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) userFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? userFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? userFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFieldChanged value) userFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFieldChanged value)? userFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFieldChanged value)? userFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserFieldChangedCopyWith<$Res> {
  factory _$$_UserFieldChangedCopyWith(
          _$_UserFieldChanged value, $Res Function(_$_UserFieldChanged) then) =
      __$$_UserFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String userString});
}

/// @nodoc
class __$$_UserFieldChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_UserFieldChanged>
    implements _$$_UserFieldChangedCopyWith<$Res> {
  __$$_UserFieldChangedCopyWithImpl(
      _$_UserFieldChanged _value, $Res Function(_$_UserFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userString = null,
  }) {
    return _then(_$_UserFieldChanged(
      null == userString
          ? _value.userString
          : userString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserFieldChanged implements _UserFieldChanged {
  const _$_UserFieldChanged(this.userString);

  @override
  final String userString;

  @override
  String toString() {
    return 'LoginEvent.userFieldChanged(userString: $userString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFieldChanged &&
            (identical(other.userString, userString) ||
                other.userString == userString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserFieldChangedCopyWith<_$_UserFieldChanged> get copyWith =>
      __$$_UserFieldChangedCopyWithImpl<_$_UserFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) userFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() loginSubmitted,
  }) {
    return userFieldChanged(userString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? userFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? loginSubmitted,
  }) {
    return userFieldChanged?.call(userString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? userFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (userFieldChanged != null) {
      return userFieldChanged(userString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFieldChanged value) userFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return userFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFieldChanged value)? userFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return userFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFieldChanged value)? userFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (userFieldChanged != null) {
      return userFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _UserFieldChanged implements LoginEvent {
  const factory _UserFieldChanged(final String userString) =
      _$_UserFieldChanged;

  String get userString;
  @JsonKey(ignore: true)
  _$$_UserFieldChangedCopyWith<_$_UserFieldChanged> get copyWith =>
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
    extends _$LoginEventCopyWithImpl<$Res, _$_PasswordFieldChanged>
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
    return 'LoginEvent.passwordFieldChanged(passwordString: $passwordString)';
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
    required TResult Function(String userString) userFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() loginSubmitted,
  }) {
    return passwordFieldChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? userFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? loginSubmitted,
  }) {
    return passwordFieldChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? userFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? loginSubmitted,
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
    required TResult Function(_UserFieldChanged value) userFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return passwordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFieldChanged value)? userFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return passwordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFieldChanged value)? userFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (passwordFieldChanged != null) {
      return passwordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordFieldChanged implements LoginEvent {
  const factory _PasswordFieldChanged(final String passwordString) =
      _$_PasswordFieldChanged;

  String get passwordString;
  @JsonKey(ignore: true)
  _$$_PasswordFieldChangedCopyWith<_$_PasswordFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ObscurePasswordToggledCopyWith<$Res> {
  factory _$$_ObscurePasswordToggledCopyWith(_$_ObscurePasswordToggled value,
          $Res Function(_$_ObscurePasswordToggled) then) =
      __$$_ObscurePasswordToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscurePasswordToggledCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_ObscurePasswordToggled>
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
    return 'LoginEvent.obscurePasswordToggled()';
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
    required TResult Function(String userString) userFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() loginSubmitted,
  }) {
    return obscurePasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? userFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? loginSubmitted,
  }) {
    return obscurePasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? userFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? loginSubmitted,
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
    required TResult Function(_UserFieldChanged value) userFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return obscurePasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFieldChanged value)? userFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return obscurePasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFieldChanged value)? userFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (obscurePasswordToggled != null) {
      return obscurePasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscurePasswordToggled implements LoginEvent {
  const factory _ObscurePasswordToggled() = _$_ObscurePasswordToggled;
}

/// @nodoc
abstract class _$$_LoginSubmittedCopyWith<$Res> {
  factory _$$_LoginSubmittedCopyWith(
          _$_LoginSubmitted value, $Res Function(_$_LoginSubmitted) then) =
      __$$_LoginSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginSubmittedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$_LoginSubmitted>
    implements _$$_LoginSubmittedCopyWith<$Res> {
  __$$_LoginSubmittedCopyWithImpl(
      _$_LoginSubmitted _value, $Res Function(_$_LoginSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginSubmitted implements _LoginSubmitted {
  const _$_LoginSubmitted();

  @override
  String toString() {
    return 'LoginEvent.loginSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userString) userFieldChanged,
    required TResult Function(String passwordString) passwordFieldChanged,
    required TResult Function() obscurePasswordToggled,
    required TResult Function() loginSubmitted,
  }) {
    return loginSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userString)? userFieldChanged,
    TResult? Function(String passwordString)? passwordFieldChanged,
    TResult? Function()? obscurePasswordToggled,
    TResult? Function()? loginSubmitted,
  }) {
    return loginSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userString)? userFieldChanged,
    TResult Function(String passwordString)? passwordFieldChanged,
    TResult Function()? obscurePasswordToggled,
    TResult Function()? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFieldChanged value) userFieldChanged,
    required TResult Function(_PasswordFieldChanged value) passwordFieldChanged,
    required TResult Function(_ObscurePasswordToggled value)
        obscurePasswordToggled,
    required TResult Function(_LoginSubmitted value) loginSubmitted,
  }) {
    return loginSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFieldChanged value)? userFieldChanged,
    TResult? Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult? Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult? Function(_LoginSubmitted value)? loginSubmitted,
  }) {
    return loginSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFieldChanged value)? userFieldChanged,
    TResult Function(_PasswordFieldChanged value)? passwordFieldChanged,
    TResult Function(_ObscurePasswordToggled value)? obscurePasswordToggled,
    TResult Function(_LoginSubmitted value)? loginSubmitted,
    required TResult orElse(),
  }) {
    if (loginSubmitted != null) {
      return loginSubmitted(this);
    }
    return orElse();
  }
}

abstract class _LoginSubmitted implements LoginEvent {
  const factory _LoginSubmitted() = _$_LoginSubmitted;
}

/// @nodoc
mixin _$LoginState {
  LoginUserField get user => throw _privateConstructorUsedError;
  LoginPasswordField get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  Either<LoginFailure, Success>? get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {LoginUserField user,
      LoginPasswordField password,
      bool isSubmitting,
      bool showErrorMessage,
      bool obscurePassword,
      Either<LoginFailure, Success>? authFailureOrSuccess});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? obscurePassword = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUserField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPasswordField,
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
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<LoginFailure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LoginUserField user,
      LoginPasswordField password,
      bool isSubmitting,
      bool showErrorMessage,
      bool obscurePassword,
      Either<LoginFailure, Success>? authFailureOrSuccess});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? obscurePassword = null,
    Object? authFailureOrSuccess = freezed,
  }) {
    return _then(_$_LoginState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoginUserField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as LoginPasswordField,
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
      authFailureOrSuccess: freezed == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<LoginFailure, Success>?,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {required this.user,
      required this.password,
      this.isSubmitting = false,
      this.showErrorMessage = false,
      this.obscurePassword = true,
      this.authFailureOrSuccess});

  @override
  final LoginUserField user;
  @override
  final LoginPasswordField password;
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
  final Either<LoginFailure, Success>? authFailureOrSuccess;

  @override
  String toString() {
    return 'LoginState(user: $user, password: $password, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, obscurePassword: $obscurePassword, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.obscurePassword, obscurePassword) ||
                other.obscurePassword == obscurePassword) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, password, isSubmitting,
      showErrorMessage, obscurePassword, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
          {required final LoginUserField user,
          required final LoginPasswordField password,
          final bool isSubmitting,
          final bool showErrorMessage,
          final bool obscurePassword,
          final Either<LoginFailure, Success>? authFailureOrSuccess}) =
      _$_LoginState;

  @override
  LoginUserField get user;
  @override
  LoginPasswordField get password;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  bool get obscurePassword;
  @override
  Either<LoginFailure, Success>? get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
