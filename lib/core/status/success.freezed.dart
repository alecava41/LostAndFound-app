// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Success {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() genericSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? genericSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? genericSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericSuccess value) genericSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenericSuccess value)? genericSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericSuccess value)? genericSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessCopyWith<$Res> {
  factory $SuccessCopyWith(Success value, $Res Function(Success) then) =
      _$SuccessCopyWithImpl<$Res, Success>;
}

/// @nodoc
class _$SuccessCopyWithImpl<$Res, $Val extends Success>
    implements $SuccessCopyWith<$Res> {
  _$SuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GenericSuccessCopyWith<$Res> {
  factory _$$_GenericSuccessCopyWith(
          _$_GenericSuccess value, $Res Function(_$_GenericSuccess) then) =
      __$$_GenericSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GenericSuccessCopyWithImpl<$Res>
    extends _$SuccessCopyWithImpl<$Res, _$_GenericSuccess>
    implements _$$_GenericSuccessCopyWith<$Res> {
  __$$_GenericSuccessCopyWithImpl(
      _$_GenericSuccess _value, $Res Function(_$_GenericSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GenericSuccess implements _GenericSuccess {
  const _$_GenericSuccess();

  @override
  String toString() {
    return 'Success.genericSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GenericSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() genericSuccess,
  }) {
    return genericSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? genericSuccess,
  }) {
    return genericSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? genericSuccess,
    required TResult orElse(),
  }) {
    if (genericSuccess != null) {
      return genericSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GenericSuccess value) genericSuccess,
  }) {
    return genericSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GenericSuccess value)? genericSuccess,
  }) {
    return genericSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GenericSuccess value)? genericSuccess,
    required TResult orElse(),
  }) {
    if (genericSuccess != null) {
      return genericSuccess(this);
    }
    return orElse();
  }
}

abstract class _GenericSuccess implements Success {
  const factory _GenericSuccess() = _$_GenericSuccess;
}
