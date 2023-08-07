// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangePasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordEventCopyWith<$Res> {
  factory $ChangePasswordEventCopyWith(
          ChangePasswordEvent value, $Res Function(ChangePasswordEvent) then) =
      _$ChangePasswordEventCopyWithImpl<$Res, ChangePasswordEvent>;
}

/// @nodoc
class _$ChangePasswordEventCopyWithImpl<$Res, $Val extends ChangePasswordEvent>
    implements $ChangePasswordEventCopyWith<$Res> {
  _$ChangePasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OldPasswordFieldChangedCopyWith<$Res> {
  factory _$$_OldPasswordFieldChangedCopyWith(_$_OldPasswordFieldChanged value,
          $Res Function(_$_OldPasswordFieldChanged) then) =
      __$$_OldPasswordFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordString});
}

/// @nodoc
class __$$_OldPasswordFieldChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_OldPasswordFieldChanged>
    implements _$$_OldPasswordFieldChangedCopyWith<$Res> {
  __$$_OldPasswordFieldChangedCopyWithImpl(_$_OldPasswordFieldChanged _value,
      $Res Function(_$_OldPasswordFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordString = null,
  }) {
    return _then(_$_OldPasswordFieldChanged(
      null == passwordString
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OldPasswordFieldChanged implements _OldPasswordFieldChanged {
  const _$_OldPasswordFieldChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'ChangePasswordEvent.oldPasswordFieldChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OldPasswordFieldChanged &&
            (identical(other.passwordString, passwordString) ||
                other.passwordString == passwordString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OldPasswordFieldChangedCopyWith<_$_OldPasswordFieldChanged>
      get copyWith =>
          __$$_OldPasswordFieldChangedCopyWithImpl<_$_OldPasswordFieldChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return oldPasswordFieldChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return oldPasswordFieldChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (oldPasswordFieldChanged != null) {
      return oldPasswordFieldChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return oldPasswordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return oldPasswordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (oldPasswordFieldChanged != null) {
      return oldPasswordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _OldPasswordFieldChanged implements ChangePasswordEvent {
  const factory _OldPasswordFieldChanged(final String passwordString) =
      _$_OldPasswordFieldChanged;

  String get passwordString;
  @JsonKey(ignore: true)
  _$$_OldPasswordFieldChangedCopyWith<_$_OldPasswordFieldChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewPasswordFieldChangedCopyWith<$Res> {
  factory _$$_NewPasswordFieldChangedCopyWith(_$_NewPasswordFieldChanged value,
          $Res Function(_$_NewPasswordFieldChanged) then) =
      __$$_NewPasswordFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordString});
}

/// @nodoc
class __$$_NewPasswordFieldChangedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_NewPasswordFieldChanged>
    implements _$$_NewPasswordFieldChangedCopyWith<$Res> {
  __$$_NewPasswordFieldChangedCopyWithImpl(_$_NewPasswordFieldChanged _value,
      $Res Function(_$_NewPasswordFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordString = null,
  }) {
    return _then(_$_NewPasswordFieldChanged(
      null == passwordString
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewPasswordFieldChanged implements _NewPasswordFieldChanged {
  const _$_NewPasswordFieldChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'ChangePasswordEvent.newPasswordFieldChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewPasswordFieldChanged &&
            (identical(other.passwordString, passwordString) ||
                other.passwordString == passwordString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewPasswordFieldChangedCopyWith<_$_NewPasswordFieldChanged>
      get copyWith =>
          __$$_NewPasswordFieldChangedCopyWithImpl<_$_NewPasswordFieldChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return newPasswordFieldChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return newPasswordFieldChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (newPasswordFieldChanged != null) {
      return newPasswordFieldChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return newPasswordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return newPasswordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (newPasswordFieldChanged != null) {
      return newPasswordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordFieldChanged implements ChangePasswordEvent {
  const factory _NewPasswordFieldChanged(final String passwordString) =
      _$_NewPasswordFieldChanged;

  String get passwordString;
  @JsonKey(ignore: true)
  _$$_NewPasswordFieldChangedCopyWith<_$_NewPasswordFieldChanged>
      get copyWith => throw _privateConstructorUsedError;
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
    extends _$ChangePasswordEventCopyWithImpl<$Res,
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
    return 'ChangePasswordEvent.confirmPasswordFieldChanged(confirmPasswordString: $confirmPasswordString)';
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
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return confirmPasswordFieldChanged(confirmPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return confirmPasswordFieldChanged?.call(confirmPasswordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
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
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return confirmPasswordFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return confirmPasswordFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (confirmPasswordFieldChanged != null) {
      return confirmPasswordFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordFieldChanged implements ChangePasswordEvent {
  const factory _ConfirmPasswordFieldChanged(
      final String confirmPasswordString) = _$_ConfirmPasswordFieldChanged;

  String get confirmPasswordString;
  @JsonKey(ignore: true)
  _$$_ConfirmPasswordFieldChangedCopyWith<_$_ConfirmPasswordFieldChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ObscureOldPasswordToggledCopyWith<$Res> {
  factory _$$_ObscureOldPasswordToggledCopyWith(
          _$_ObscureOldPasswordToggled value,
          $Res Function(_$_ObscureOldPasswordToggled) then) =
      __$$_ObscureOldPasswordToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscureOldPasswordToggledCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$_ObscureOldPasswordToggled>
    implements _$$_ObscureOldPasswordToggledCopyWith<$Res> {
  __$$_ObscureOldPasswordToggledCopyWithImpl(
      _$_ObscureOldPasswordToggled _value,
      $Res Function(_$_ObscureOldPasswordToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ObscureOldPasswordToggled implements _ObscureOldPasswordToggled {
  const _$_ObscureOldPasswordToggled();

  @override
  String toString() {
    return 'ChangePasswordEvent.obscureOldPasswordToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObscureOldPasswordToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return obscureOldPasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return obscureOldPasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (obscureOldPasswordToggled != null) {
      return obscureOldPasswordToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return obscureOldPasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return obscureOldPasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (obscureOldPasswordToggled != null) {
      return obscureOldPasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscureOldPasswordToggled implements ChangePasswordEvent {
  const factory _ObscureOldPasswordToggled() = _$_ObscureOldPasswordToggled;
}

/// @nodoc
abstract class _$$_ObscureNewPasswordToggledCopyWith<$Res> {
  factory _$$_ObscureNewPasswordToggledCopyWith(
          _$_ObscureNewPasswordToggled value,
          $Res Function(_$_ObscureNewPasswordToggled) then) =
      __$$_ObscureNewPasswordToggledCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ObscureNewPasswordToggledCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res,
        _$_ObscureNewPasswordToggled>
    implements _$$_ObscureNewPasswordToggledCopyWith<$Res> {
  __$$_ObscureNewPasswordToggledCopyWithImpl(
      _$_ObscureNewPasswordToggled _value,
      $Res Function(_$_ObscureNewPasswordToggled) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ObscureNewPasswordToggled implements _ObscureNewPasswordToggled {
  const _$_ObscureNewPasswordToggled();

  @override
  String toString() {
    return 'ChangePasswordEvent.obscureNewPasswordToggled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObscureNewPasswordToggled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return obscureNewPasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return obscureNewPasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (obscureNewPasswordToggled != null) {
      return obscureNewPasswordToggled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return obscureNewPasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return obscureNewPasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (obscureNewPasswordToggled != null) {
      return obscureNewPasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscureNewPasswordToggled implements ChangePasswordEvent {
  const factory _ObscureNewPasswordToggled() = _$_ObscureNewPasswordToggled;
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
    extends _$ChangePasswordEventCopyWithImpl<$Res,
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
    return 'ChangePasswordEvent.obscureConfirmPasswordToggled()';
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
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return obscureConfirmPasswordToggled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return obscureConfirmPasswordToggled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
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
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return obscureConfirmPasswordToggled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return obscureConfirmPasswordToggled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (obscureConfirmPasswordToggled != null) {
      return obscureConfirmPasswordToggled(this);
    }
    return orElse();
  }
}

abstract class _ObscureConfirmPasswordToggled implements ChangePasswordEvent {
  const factory _ObscureConfirmPasswordToggled() =
      _$_ObscureConfirmPasswordToggled;
}

/// @nodoc
abstract class _$$_ChangePasswordSubmittedCopyWith<$Res> {
  factory _$$_ChangePasswordSubmittedCopyWith(_$_ChangePasswordSubmitted value,
          $Res Function(_$_ChangePasswordSubmitted) then) =
      __$$_ChangePasswordSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangePasswordSubmittedCopyWithImpl<$Res>
    extends _$ChangePasswordEventCopyWithImpl<$Res, _$_ChangePasswordSubmitted>
    implements _$$_ChangePasswordSubmittedCopyWith<$Res> {
  __$$_ChangePasswordSubmittedCopyWithImpl(_$_ChangePasswordSubmitted _value,
      $Res Function(_$_ChangePasswordSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangePasswordSubmitted implements _ChangePasswordSubmitted {
  const _$_ChangePasswordSubmitted();

  @override
  String toString() {
    return 'ChangePasswordEvent.changePasswordSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String passwordString) oldPasswordFieldChanged,
    required TResult Function(String passwordString) newPasswordFieldChanged,
    required TResult Function(String confirmPasswordString)
        confirmPasswordFieldChanged,
    required TResult Function() obscureOldPasswordToggled,
    required TResult Function() obscureNewPasswordToggled,
    required TResult Function() obscureConfirmPasswordToggled,
    required TResult Function() changePasswordSubmitted,
  }) {
    return changePasswordSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String passwordString)? oldPasswordFieldChanged,
    TResult? Function(String passwordString)? newPasswordFieldChanged,
    TResult? Function(String confirmPasswordString)?
        confirmPasswordFieldChanged,
    TResult? Function()? obscureOldPasswordToggled,
    TResult? Function()? obscureNewPasswordToggled,
    TResult? Function()? obscureConfirmPasswordToggled,
    TResult? Function()? changePasswordSubmitted,
  }) {
    return changePasswordSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String passwordString)? oldPasswordFieldChanged,
    TResult Function(String passwordString)? newPasswordFieldChanged,
    TResult Function(String confirmPasswordString)? confirmPasswordFieldChanged,
    TResult Function()? obscureOldPasswordToggled,
    TResult Function()? obscureNewPasswordToggled,
    TResult Function()? obscureConfirmPasswordToggled,
    TResult Function()? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (changePasswordSubmitted != null) {
      return changePasswordSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OldPasswordFieldChanged value)
        oldPasswordFieldChanged,
    required TResult Function(_NewPasswordFieldChanged value)
        newPasswordFieldChanged,
    required TResult Function(_ConfirmPasswordFieldChanged value)
        confirmPasswordFieldChanged,
    required TResult Function(_ObscureOldPasswordToggled value)
        obscureOldPasswordToggled,
    required TResult Function(_ObscureNewPasswordToggled value)
        obscureNewPasswordToggled,
    required TResult Function(_ObscureConfirmPasswordToggled value)
        obscureConfirmPasswordToggled,
    required TResult Function(_ChangePasswordSubmitted value)
        changePasswordSubmitted,
  }) {
    return changePasswordSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult? Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult? Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult? Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult? Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult? Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult? Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
  }) {
    return changePasswordSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OldPasswordFieldChanged value)? oldPasswordFieldChanged,
    TResult Function(_NewPasswordFieldChanged value)? newPasswordFieldChanged,
    TResult Function(_ConfirmPasswordFieldChanged value)?
        confirmPasswordFieldChanged,
    TResult Function(_ObscureOldPasswordToggled value)?
        obscureOldPasswordToggled,
    TResult Function(_ObscureNewPasswordToggled value)?
        obscureNewPasswordToggled,
    TResult Function(_ObscureConfirmPasswordToggled value)?
        obscureConfirmPasswordToggled,
    TResult Function(_ChangePasswordSubmitted value)? changePasswordSubmitted,
    required TResult orElse(),
  }) {
    if (changePasswordSubmitted != null) {
      return changePasswordSubmitted(this);
    }
    return orElse();
  }
}

abstract class _ChangePasswordSubmitted implements ChangePasswordEvent {
  const factory _ChangePasswordSubmitted() = _$_ChangePasswordSubmitted;
}

/// @nodoc
mixin _$ChangePasswordState {
  ChangePswOldPasswordField get oldPassword =>
      throw _privateConstructorUsedError;
  ChangePswNewPasswordField get newPassword =>
      throw _privateConstructorUsedError;
  ChangePswConfirmPasswordField get confirmPassword =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  bool get obscureOldPassword => throw _privateConstructorUsedError;
  bool get obscureNewPassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  Either<Failure, Success>? get changePswFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangePasswordStateCopyWith<ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordStateCopyWith<$Res> {
  factory $ChangePasswordStateCopyWith(
          ChangePasswordState value, $Res Function(ChangePasswordState) then) =
      _$ChangePasswordStateCopyWithImpl<$Res, ChangePasswordState>;
  @useResult
  $Res call(
      {ChangePswOldPasswordField oldPassword,
      ChangePswNewPasswordField newPassword,
      ChangePswConfirmPasswordField confirmPassword,
      bool isSubmitting,
      bool showErrorMessage,
      bool obscureOldPassword,
      bool obscureNewPassword,
      bool obscureConfirmPassword,
      Either<Failure, Success>? changePswFailureOrSuccess});
}

/// @nodoc
class _$ChangePasswordStateCopyWithImpl<$Res, $Val extends ChangePasswordState>
    implements $ChangePasswordStateCopyWith<$Res> {
  _$ChangePasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? obscureOldPassword = null,
    Object? obscureNewPassword = null,
    Object? obscureConfirmPassword = null,
    Object? changePswFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as ChangePswOldPasswordField,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as ChangePswNewPasswordField,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ChangePswConfirmPasswordField,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureOldPassword: null == obscureOldPassword
          ? _value.obscureOldPassword
          : obscureOldPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureNewPassword: null == obscureNewPassword
          ? _value.obscureNewPassword
          : obscureNewPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: null == obscureConfirmPassword
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      changePswFailureOrSuccess: freezed == changePswFailureOrSuccess
          ? _value.changePswFailureOrSuccess
          : changePswFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePasswordStateCopyWith<$Res>
    implements $ChangePasswordStateCopyWith<$Res> {
  factory _$$_ChangePasswordStateCopyWith(_$_ChangePasswordState value,
          $Res Function(_$_ChangePasswordState) then) =
      __$$_ChangePasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ChangePswOldPasswordField oldPassword,
      ChangePswNewPasswordField newPassword,
      ChangePswConfirmPasswordField confirmPassword,
      bool isSubmitting,
      bool showErrorMessage,
      bool obscureOldPassword,
      bool obscureNewPassword,
      bool obscureConfirmPassword,
      Either<Failure, Success>? changePswFailureOrSuccess});
}

/// @nodoc
class __$$_ChangePasswordStateCopyWithImpl<$Res>
    extends _$ChangePasswordStateCopyWithImpl<$Res, _$_ChangePasswordState>
    implements _$$_ChangePasswordStateCopyWith<$Res> {
  __$$_ChangePasswordStateCopyWithImpl(_$_ChangePasswordState _value,
      $Res Function(_$_ChangePasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
    Object? confirmPassword = null,
    Object? isSubmitting = null,
    Object? showErrorMessage = null,
    Object? obscureOldPassword = null,
    Object? obscureNewPassword = null,
    Object? obscureConfirmPassword = null,
    Object? changePswFailureOrSuccess = freezed,
  }) {
    return _then(_$_ChangePasswordState(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as ChangePswOldPasswordField,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as ChangePswNewPasswordField,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ChangePswConfirmPasswordField,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureOldPassword: null == obscureOldPassword
          ? _value.obscureOldPassword
          : obscureOldPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureNewPassword: null == obscureNewPassword
          ? _value.obscureNewPassword
          : obscureNewPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: null == obscureConfirmPassword
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      changePswFailureOrSuccess: freezed == changePswFailureOrSuccess
          ? _value.changePswFailureOrSuccess
          : changePswFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_ChangePasswordState implements _ChangePasswordState {
  const _$_ChangePasswordState(
      {required this.oldPassword,
      required this.newPassword,
      required this.confirmPassword,
      this.isSubmitting = false,
      this.showErrorMessage = false,
      this.obscureOldPassword = true,
      this.obscureNewPassword = true,
      this.obscureConfirmPassword = true,
      this.changePswFailureOrSuccess});

  @override
  final ChangePswOldPasswordField oldPassword;
  @override
  final ChangePswNewPasswordField newPassword;
  @override
  final ChangePswConfirmPasswordField confirmPassword;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool showErrorMessage;
  @override
  @JsonKey()
  final bool obscureOldPassword;
  @override
  @JsonKey()
  final bool obscureNewPassword;
  @override
  @JsonKey()
  final bool obscureConfirmPassword;
  @override
  final Either<Failure, Success>? changePswFailureOrSuccess;

  @override
  String toString() {
    return 'ChangePasswordState(oldPassword: $oldPassword, newPassword: $newPassword, confirmPassword: $confirmPassword, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, obscureOldPassword: $obscureOldPassword, obscureNewPassword: $obscureNewPassword, obscureConfirmPassword: $obscureConfirmPassword, changePswFailureOrSuccess: $changePswFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePasswordState &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.obscureOldPassword, obscureOldPassword) ||
                other.obscureOldPassword == obscureOldPassword) &&
            (identical(other.obscureNewPassword, obscureNewPassword) ||
                other.obscureNewPassword == obscureNewPassword) &&
            (identical(other.obscureConfirmPassword, obscureConfirmPassword) ||
                other.obscureConfirmPassword == obscureConfirmPassword) &&
            (identical(other.changePswFailureOrSuccess,
                    changePswFailureOrSuccess) ||
                other.changePswFailureOrSuccess == changePswFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      oldPassword,
      newPassword,
      confirmPassword,
      isSubmitting,
      showErrorMessage,
      obscureOldPassword,
      obscureNewPassword,
      obscureConfirmPassword,
      changePswFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      __$$_ChangePasswordStateCopyWithImpl<_$_ChangePasswordState>(
          this, _$identity);
}

abstract class _ChangePasswordState implements ChangePasswordState {
  const factory _ChangePasswordState(
          {required final ChangePswOldPasswordField oldPassword,
          required final ChangePswNewPasswordField newPassword,
          required final ChangePswConfirmPasswordField confirmPassword,
          final bool isSubmitting,
          final bool showErrorMessage,
          final bool obscureOldPassword,
          final bool obscureNewPassword,
          final bool obscureConfirmPassword,
          final Either<Failure, Success>? changePswFailureOrSuccess}) =
      _$_ChangePasswordState;

  @override
  ChangePswOldPasswordField get oldPassword;
  @override
  ChangePswNewPasswordField get newPassword;
  @override
  ChangePswConfirmPasswordField get confirmPassword;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  bool get obscureOldPassword;
  @override
  bool get obscureNewPassword;
  @override
  bool get obscureConfirmPassword;
  @override
  Either<Failure, Success>? get changePswFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePasswordStateCopyWith<_$_ChangePasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
