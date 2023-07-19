// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() validationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function()? validationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? validationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFailureCopyWith<$Res> {
  factory $SearchFailureCopyWith(
          SearchFailure value, $Res Function(SearchFailure) then) =
      _$SearchFailureCopyWithImpl<$Res, SearchFailure>;
}

/// @nodoc
class _$SearchFailureCopyWithImpl<$Res, $Val extends SearchFailure>
    implements $SearchFailureCopyWith<$Res> {
  _$SearchFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NetworkErrorCopyWith<$Res> {
  factory _$$_NetworkErrorCopyWith(
          _$_NetworkError value, $Res Function(_$_NetworkError) then) =
      __$$_NetworkErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkErrorCopyWithImpl<$Res>
    extends _$SearchFailureCopyWithImpl<$Res, _$_NetworkError>
    implements _$$_NetworkErrorCopyWith<$Res> {
  __$$_NetworkErrorCopyWithImpl(
      _$_NetworkError _value, $Res Function(_$_NetworkError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NetworkError implements _NetworkError {
  const _$_NetworkError();

  @override
  String toString() {
    return 'SearchFailure.networkError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NetworkError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() validationError,
  }) {
    return networkError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function()? validationError,
  }) {
    return networkError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? validationError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
  }) {
    return networkError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
  }) {
    return networkError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    required TResult orElse(),
  }) {
    if (networkError != null) {
      return networkError(this);
    }
    return orElse();
  }
}

abstract class _NetworkError implements SearchFailure {
  const factory _NetworkError() = _$_NetworkError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$SearchFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'SearchFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() validationError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function()? validationError,
  }) {
    return serverError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? validationError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements SearchFailure {
  const factory _ServerError() = _$_ServerError;
}

/// @nodoc
abstract class _$$_ValidationErrorCopyWith<$Res> {
  factory _$$_ValidationErrorCopyWith(
          _$_ValidationError value, $Res Function(_$_ValidationError) then) =
      __$$_ValidationErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ValidationErrorCopyWithImpl<$Res>
    extends _$SearchFailureCopyWithImpl<$Res, _$_ValidationError>
    implements _$$_ValidationErrorCopyWith<$Res> {
  __$$_ValidationErrorCopyWithImpl(
      _$_ValidationError _value, $Res Function(_$_ValidationError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ValidationError implements _ValidationError {
  const _$_ValidationError();

  @override
  String toString() {
    return 'SearchFailure.validationError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ValidationError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() networkError,
    required TResult Function() serverError,
    required TResult Function() validationError,
  }) {
    return validationError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? networkError,
    TResult? Function()? serverError,
    TResult? Function()? validationError,
  }) {
    return validationError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? networkError,
    TResult Function()? serverError,
    TResult Function()? validationError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkError value) networkError,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationError,
  }) {
    return validationError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NetworkError value)? networkError,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_ValidationError value)? validationError,
  }) {
    return validationError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkError value)? networkError,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationError,
    required TResult orElse(),
  }) {
    if (validationError != null) {
      return validationError(this);
    }
    return orElse();
  }
}

abstract class _ValidationError implements SearchFailure {
  const factory _ValidationError() = _$_ValidationError;
}
