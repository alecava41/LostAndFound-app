// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inbox_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InboxEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inboxContentCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inboxContentCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inboxContentCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InboxContentCreated value) inboxContentCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InboxContentCreated value)? inboxContentCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InboxContentCreated value)? inboxContentCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxEventCopyWith<$Res> {
  factory $InboxEventCopyWith(
          InboxEvent value, $Res Function(InboxEvent) then) =
      _$InboxEventCopyWithImpl<$Res, InboxEvent>;
}

/// @nodoc
class _$InboxEventCopyWithImpl<$Res, $Val extends InboxEvent>
    implements $InboxEventCopyWith<$Res> {
  _$InboxEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InboxContentCreatedCopyWith<$Res> {
  factory _$$_InboxContentCreatedCopyWith(_$_InboxContentCreated value,
          $Res Function(_$_InboxContentCreated) then) =
      __$$_InboxContentCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InboxContentCreatedCopyWithImpl<$Res>
    extends _$InboxEventCopyWithImpl<$Res, _$_InboxContentCreated>
    implements _$$_InboxContentCreatedCopyWith<$Res> {
  __$$_InboxContentCreatedCopyWithImpl(_$_InboxContentCreated _value,
      $Res Function(_$_InboxContentCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InboxContentCreated implements _InboxContentCreated {
  const _$_InboxContentCreated();

  @override
  String toString() {
    return 'InboxEvent.inboxContentCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InboxContentCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inboxContentCreated,
  }) {
    return inboxContentCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? inboxContentCreated,
  }) {
    return inboxContentCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inboxContentCreated,
    required TResult orElse(),
  }) {
    if (inboxContentCreated != null) {
      return inboxContentCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InboxContentCreated value) inboxContentCreated,
  }) {
    return inboxContentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InboxContentCreated value)? inboxContentCreated,
  }) {
    return inboxContentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InboxContentCreated value)? inboxContentCreated,
    required TResult orElse(),
  }) {
    if (inboxContentCreated != null) {
      return inboxContentCreated(this);
    }
    return orElse();
  }
}

abstract class _InboxContentCreated implements InboxEvent {
  const factory _InboxContentCreated() = _$_InboxContentCreated;
}

/// @nodoc
mixin _$InboxState {
  Stream<List<Room>> get userRooms => throw _privateConstructorUsedError;
  int get currentId => throw _privateConstructorUsedError;
  bool get hasLoginOrLoadingError => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InboxStateCopyWith<InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxStateCopyWith<$Res> {
  factory $InboxStateCopyWith(
          InboxState value, $Res Function(InboxState) then) =
      _$InboxStateCopyWithImpl<$Res, InboxState>;
  @useResult
  $Res call(
      {Stream<List<Room>> userRooms,
      int currentId,
      bool hasLoginOrLoadingError,
      String token,
      bool isLoading});
}

/// @nodoc
class _$InboxStateCopyWithImpl<$Res, $Val extends InboxState>
    implements $InboxStateCopyWith<$Res> {
  _$InboxStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRooms = null,
    Object? currentId = null,
    Object? hasLoginOrLoadingError = null,
    Object? token = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      userRooms: null == userRooms
          ? _value.userRooms
          : userRooms // ignore: cast_nullable_to_non_nullable
              as Stream<List<Room>>,
      currentId: null == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as int,
      hasLoginOrLoadingError: null == hasLoginOrLoadingError
          ? _value.hasLoginOrLoadingError
          : hasLoginOrLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InboxStateCopyWith<$Res>
    implements $InboxStateCopyWith<$Res> {
  factory _$$_InboxStateCopyWith(
          _$_InboxState value, $Res Function(_$_InboxState) then) =
      __$$_InboxStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<List<Room>> userRooms,
      int currentId,
      bool hasLoginOrLoadingError,
      String token,
      bool isLoading});
}

/// @nodoc
class __$$_InboxStateCopyWithImpl<$Res>
    extends _$InboxStateCopyWithImpl<$Res, _$_InboxState>
    implements _$$_InboxStateCopyWith<$Res> {
  __$$_InboxStateCopyWithImpl(
      _$_InboxState _value, $Res Function(_$_InboxState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userRooms = null,
    Object? currentId = null,
    Object? hasLoginOrLoadingError = null,
    Object? token = null,
    Object? isLoading = null,
  }) {
    return _then(_$_InboxState(
      userRooms: null == userRooms
          ? _value.userRooms
          : userRooms // ignore: cast_nullable_to_non_nullable
              as Stream<List<Room>>,
      currentId: null == currentId
          ? _value.currentId
          : currentId // ignore: cast_nullable_to_non_nullable
              as int,
      hasLoginOrLoadingError: null == hasLoginOrLoadingError
          ? _value.hasLoginOrLoadingError
          : hasLoginOrLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InboxState implements _InboxState {
  const _$_InboxState(
      {required this.userRooms,
      required this.currentId,
      this.hasLoginOrLoadingError = false,
      this.token = "",
      this.isLoading = false});

  @override
  final Stream<List<Room>> userRooms;
  @override
  final int currentId;
  @override
  @JsonKey()
  final bool hasLoginOrLoadingError;
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'InboxState(userRooms: $userRooms, currentId: $currentId, hasLoginOrLoadingError: $hasLoginOrLoadingError, token: $token, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InboxState &&
            (identical(other.userRooms, userRooms) ||
                other.userRooms == userRooms) &&
            (identical(other.currentId, currentId) ||
                other.currentId == currentId) &&
            (identical(other.hasLoginOrLoadingError, hasLoginOrLoadingError) ||
                other.hasLoginOrLoadingError == hasLoginOrLoadingError) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userRooms, currentId,
      hasLoginOrLoadingError, token, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InboxStateCopyWith<_$_InboxState> get copyWith =>
      __$$_InboxStateCopyWithImpl<_$_InboxState>(this, _$identity);
}

abstract class _InboxState implements InboxState {
  const factory _InboxState(
      {required final Stream<List<Room>> userRooms,
      required final int currentId,
      final bool hasLoginOrLoadingError,
      final String token,
      final bool isLoading}) = _$_InboxState;

  @override
  Stream<List<Room>> get userRooms;
  @override
  int get currentId;
  @override
  bool get hasLoginOrLoadingError;
  @override
  String get token;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_InboxStateCopyWith<_$_InboxState> get copyWith =>
      throw _privateConstructorUsedError;
}
