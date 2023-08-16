// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClaimEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() claimContentCreated,
    required TResult Function() receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? claimContentCreated,
    TResult? Function()? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? claimContentCreated,
    TResult Function()? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClaimContentCreated value) claimContentCreated,
    required TResult Function(_ReceivedClaimsRefreshed value)
        receivedClaimsRefreshed,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_SentClaimsRefreshed value) sentClaimsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClaimContentCreated value)? claimContentCreated,
    TResult? Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClaimContentCreated value)? claimContentCreated,
    TResult Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimEventCopyWith<$Res> {
  factory $ClaimEventCopyWith(
          ClaimEvent value, $Res Function(ClaimEvent) then) =
      _$ClaimEventCopyWithImpl<$Res, ClaimEvent>;
}

/// @nodoc
class _$ClaimEventCopyWithImpl<$Res, $Val extends ClaimEvent>
    implements $ClaimEventCopyWith<$Res> {
  _$ClaimEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ClaimContentCreatedCopyWith<$Res> {
  factory _$$_ClaimContentCreatedCopyWith(_$_ClaimContentCreated value,
          $Res Function(_$_ClaimContentCreated) then) =
      __$$_ClaimContentCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClaimContentCreatedCopyWithImpl<$Res>
    extends _$ClaimEventCopyWithImpl<$Res, _$_ClaimContentCreated>
    implements _$$_ClaimContentCreatedCopyWith<$Res> {
  __$$_ClaimContentCreatedCopyWithImpl(_$_ClaimContentCreated _value,
      $Res Function(_$_ClaimContentCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClaimContentCreated implements _ClaimContentCreated {
  const _$_ClaimContentCreated();

  @override
  String toString() {
    return 'ClaimEvent.claimContentCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClaimContentCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() claimContentCreated,
    required TResult Function() receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return claimContentCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? claimContentCreated,
    TResult? Function()? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return claimContentCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? claimContentCreated,
    TResult Function()? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (claimContentCreated != null) {
      return claimContentCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClaimContentCreated value) claimContentCreated,
    required TResult Function(_ReceivedClaimsRefreshed value)
        receivedClaimsRefreshed,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_SentClaimsRefreshed value) sentClaimsRefreshed,
  }) {
    return claimContentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClaimContentCreated value)? claimContentCreated,
    TResult? Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
  }) {
    return claimContentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClaimContentCreated value)? claimContentCreated,
    TResult Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (claimContentCreated != null) {
      return claimContentCreated(this);
    }
    return orElse();
  }
}

abstract class _ClaimContentCreated implements ClaimEvent {
  const factory _ClaimContentCreated() = _$_ClaimContentCreated;
}

/// @nodoc
abstract class _$$_ReceivedClaimsRefreshedCopyWith<$Res> {
  factory _$$_ReceivedClaimsRefreshedCopyWith(_$_ReceivedClaimsRefreshed value,
          $Res Function(_$_ReceivedClaimsRefreshed) then) =
      __$$_ReceivedClaimsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReceivedClaimsRefreshedCopyWithImpl<$Res>
    extends _$ClaimEventCopyWithImpl<$Res, _$_ReceivedClaimsRefreshed>
    implements _$$_ReceivedClaimsRefreshedCopyWith<$Res> {
  __$$_ReceivedClaimsRefreshedCopyWithImpl(_$_ReceivedClaimsRefreshed _value,
      $Res Function(_$_ReceivedClaimsRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReceivedClaimsRefreshed implements _ReceivedClaimsRefreshed {
  const _$_ReceivedClaimsRefreshed();

  @override
  String toString() {
    return 'ClaimEvent.receivedClaimsRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceivedClaimsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() claimContentCreated,
    required TResult Function() receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return receivedClaimsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? claimContentCreated,
    TResult? Function()? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return receivedClaimsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? claimContentCreated,
    TResult Function()? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (receivedClaimsRefreshed != null) {
      return receivedClaimsRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClaimContentCreated value) claimContentCreated,
    required TResult Function(_ReceivedClaimsRefreshed value)
        receivedClaimsRefreshed,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_SentClaimsRefreshed value) sentClaimsRefreshed,
  }) {
    return receivedClaimsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClaimContentCreated value)? claimContentCreated,
    TResult? Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
  }) {
    return receivedClaimsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClaimContentCreated value)? claimContentCreated,
    TResult Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (receivedClaimsRefreshed != null) {
      return receivedClaimsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _ReceivedClaimsRefreshed implements ClaimEvent {
  const factory _ReceivedClaimsRefreshed() = _$_ReceivedClaimsRefreshed;
}

/// @nodoc
abstract class _$$_ClaimReadCopyWith<$Res> {
  factory _$$_ClaimReadCopyWith(
          _$_ClaimRead value, $Res Function(_$_ClaimRead) then) =
      __$$_ClaimReadCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_ClaimReadCopyWithImpl<$Res>
    extends _$ClaimEventCopyWithImpl<$Res, _$_ClaimRead>
    implements _$$_ClaimReadCopyWith<$Res> {
  __$$_ClaimReadCopyWithImpl(
      _$_ClaimRead _value, $Res Function(_$_ClaimRead) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ClaimRead(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ClaimRead implements _ClaimRead {
  const _$_ClaimRead(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ClaimEvent.claimRead(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClaimRead &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClaimReadCopyWith<_$_ClaimRead> get copyWith =>
      __$$_ClaimReadCopyWithImpl<_$_ClaimRead>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() claimContentCreated,
    required TResult Function() receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return claimRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? claimContentCreated,
    TResult? Function()? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return claimRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? claimContentCreated,
    TResult Function()? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (claimRead != null) {
      return claimRead(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClaimContentCreated value) claimContentCreated,
    required TResult Function(_ReceivedClaimsRefreshed value)
        receivedClaimsRefreshed,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_SentClaimsRefreshed value) sentClaimsRefreshed,
  }) {
    return claimRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClaimContentCreated value)? claimContentCreated,
    TResult? Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
  }) {
    return claimRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClaimContentCreated value)? claimContentCreated,
    TResult Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (claimRead != null) {
      return claimRead(this);
    }
    return orElse();
  }
}

abstract class _ClaimRead implements ClaimEvent {
  const factory _ClaimRead(final int id) = _$_ClaimRead;

  int get id;
  @JsonKey(ignore: true)
  _$$_ClaimReadCopyWith<_$_ClaimRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SentClaimsRefreshedCopyWith<$Res> {
  factory _$$_SentClaimsRefreshedCopyWith(_$_SentClaimsRefreshed value,
          $Res Function(_$_SentClaimsRefreshed) then) =
      __$$_SentClaimsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SentClaimsRefreshedCopyWithImpl<$Res>
    extends _$ClaimEventCopyWithImpl<$Res, _$_SentClaimsRefreshed>
    implements _$$_SentClaimsRefreshedCopyWith<$Res> {
  __$$_SentClaimsRefreshedCopyWithImpl(_$_SentClaimsRefreshed _value,
      $Res Function(_$_SentClaimsRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SentClaimsRefreshed implements _SentClaimsRefreshed {
  const _$_SentClaimsRefreshed();

  @override
  String toString() {
    return 'ClaimEvent.sentClaimsRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SentClaimsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() claimContentCreated,
    required TResult Function() receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return sentClaimsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? claimContentCreated,
    TResult? Function()? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return sentClaimsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? claimContentCreated,
    TResult Function()? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (sentClaimsRefreshed != null) {
      return sentClaimsRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClaimContentCreated value) claimContentCreated,
    required TResult Function(_ReceivedClaimsRefreshed value)
        receivedClaimsRefreshed,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_SentClaimsRefreshed value) sentClaimsRefreshed,
  }) {
    return sentClaimsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClaimContentCreated value)? claimContentCreated,
    TResult? Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
  }) {
    return sentClaimsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClaimContentCreated value)? claimContentCreated,
    TResult Function(_ReceivedClaimsRefreshed value)? receivedClaimsRefreshed,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_SentClaimsRefreshed value)? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (sentClaimsRefreshed != null) {
      return sentClaimsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _SentClaimsRefreshed implements ClaimEvent {
  const factory _SentClaimsRefreshed() = _$_SentClaimsRefreshed;
}

/// @nodoc
mixin _$ClaimState {
  List<ClaimReceived> get claimsReceived => throw _privateConstructorUsedError;
  List<ClaimSent> get claimsSent => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isLoadingReceived => throw _privateConstructorUsedError;
  bool get isLoadingSent => throw _privateConstructorUsedError;
  Either<Failure, Success>? get loadFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClaimStateCopyWith<ClaimState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimStateCopyWith<$Res> {
  factory $ClaimStateCopyWith(
          ClaimState value, $Res Function(ClaimState) then) =
      _$ClaimStateCopyWithImpl<$Res, ClaimState>;
  @useResult
  $Res call(
      {List<ClaimReceived> claimsReceived,
      List<ClaimSent> claimsSent,
      String token,
      bool isLoadingReceived,
      bool isLoadingSent,
      Either<Failure, Success>? loadFailureOrSuccess});
}

/// @nodoc
class _$ClaimStateCopyWithImpl<$Res, $Val extends ClaimState>
    implements $ClaimStateCopyWith<$Res> {
  _$ClaimStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimsReceived = null,
    Object? claimsSent = null,
    Object? token = null,
    Object? isLoadingReceived = null,
    Object? isLoadingSent = null,
    Object? loadFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      claimsReceived: null == claimsReceived
          ? _value.claimsReceived
          : claimsReceived // ignore: cast_nullable_to_non_nullable
              as List<ClaimReceived>,
      claimsSent: null == claimsSent
          ? _value.claimsSent
          : claimsSent // ignore: cast_nullable_to_non_nullable
              as List<ClaimSent>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingReceived: null == isLoadingReceived
          ? _value.isLoadingReceived
          : isLoadingReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSent: null == isLoadingSent
          ? _value.isLoadingSent
          : isLoadingSent // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClaimStateCopyWith<$Res>
    implements $ClaimStateCopyWith<$Res> {
  factory _$$_ClaimStateCopyWith(
          _$_ClaimState value, $Res Function(_$_ClaimState) then) =
      __$$_ClaimStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ClaimReceived> claimsReceived,
      List<ClaimSent> claimsSent,
      String token,
      bool isLoadingReceived,
      bool isLoadingSent,
      Either<Failure, Success>? loadFailureOrSuccess});
}

/// @nodoc
class __$$_ClaimStateCopyWithImpl<$Res>
    extends _$ClaimStateCopyWithImpl<$Res, _$_ClaimState>
    implements _$$_ClaimStateCopyWith<$Res> {
  __$$_ClaimStateCopyWithImpl(
      _$_ClaimState _value, $Res Function(_$_ClaimState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? claimsReceived = null,
    Object? claimsSent = null,
    Object? token = null,
    Object? isLoadingReceived = null,
    Object? isLoadingSent = null,
    Object? loadFailureOrSuccess = freezed,
  }) {
    return _then(_$_ClaimState(
      claimsReceived: null == claimsReceived
          ? _value._claimsReceived
          : claimsReceived // ignore: cast_nullable_to_non_nullable
              as List<ClaimReceived>,
      claimsSent: null == claimsSent
          ? _value._claimsSent
          : claimsSent // ignore: cast_nullable_to_non_nullable
              as List<ClaimSent>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoadingReceived: null == isLoadingReceived
          ? _value.isLoadingReceived
          : isLoadingReceived // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingSent: null == isLoadingSent
          ? _value.isLoadingSent
          : isLoadingSent // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_ClaimState implements _ClaimState {
  const _$_ClaimState(
      {required final List<ClaimReceived> claimsReceived,
      required final List<ClaimSent> claimsSent,
      this.token = "",
      this.isLoadingReceived = false,
      this.isLoadingSent = false,
      this.loadFailureOrSuccess})
      : _claimsReceived = claimsReceived,
        _claimsSent = claimsSent;

  final List<ClaimReceived> _claimsReceived;
  @override
  List<ClaimReceived> get claimsReceived {
    if (_claimsReceived is EqualUnmodifiableListView) return _claimsReceived;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_claimsReceived);
  }

  final List<ClaimSent> _claimsSent;
  @override
  List<ClaimSent> get claimsSent {
    if (_claimsSent is EqualUnmodifiableListView) return _claimsSent;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_claimsSent);
  }

  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final bool isLoadingReceived;
  @override
  @JsonKey()
  final bool isLoadingSent;
  @override
  final Either<Failure, Success>? loadFailureOrSuccess;

  @override
  String toString() {
    return 'ClaimState(claimsReceived: $claimsReceived, claimsSent: $claimsSent, token: $token, isLoadingReceived: $isLoadingReceived, isLoadingSent: $isLoadingSent, loadFailureOrSuccess: $loadFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClaimState &&
            const DeepCollectionEquality()
                .equals(other._claimsReceived, _claimsReceived) &&
            const DeepCollectionEquality()
                .equals(other._claimsSent, _claimsSent) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoadingReceived, isLoadingReceived) ||
                other.isLoadingReceived == isLoadingReceived) &&
            (identical(other.isLoadingSent, isLoadingSent) ||
                other.isLoadingSent == isLoadingSent) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_claimsReceived),
      const DeepCollectionEquality().hash(_claimsSent),
      token,
      isLoadingReceived,
      isLoadingSent,
      loadFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClaimStateCopyWith<_$_ClaimState> get copyWith =>
      __$$_ClaimStateCopyWithImpl<_$_ClaimState>(this, _$identity);
}

abstract class _ClaimState implements ClaimState {
  const factory _ClaimState(
      {required final List<ClaimReceived> claimsReceived,
      required final List<ClaimSent> claimsSent,
      final String token,
      final bool isLoadingReceived,
      final bool isLoadingSent,
      final Either<Failure, Success>? loadFailureOrSuccess}) = _$_ClaimState;

  @override
  List<ClaimReceived> get claimsReceived;
  @override
  List<ClaimSent> get claimsSent;
  @override
  String get token;
  @override
  bool get isLoadingReceived;
  @override
  bool get isLoadingSent;
  @override
  Either<Failure, Success>? get loadFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ClaimStateCopyWith<_$_ClaimState> get copyWith =>
      throw _privateConstructorUsedError;
}
