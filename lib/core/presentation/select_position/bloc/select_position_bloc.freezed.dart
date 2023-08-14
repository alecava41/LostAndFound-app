// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_position_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectPositionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectPositionEventCopyWith<$Res> {
  factory $SelectPositionEventCopyWith(
          SelectPositionEvent value, $Res Function(SelectPositionEvent) then) =
      _$SelectPositionEventCopyWithImpl<$Res, SelectPositionEvent>;
}

/// @nodoc
class _$SelectPositionEventCopyWithImpl<$Res, $Val extends SelectPositionEvent>
    implements $SelectPositionEventCopyWith<$Res> {
  _$SelectPositionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectPositionCreatedCopyWith<$Res> {
  factory _$$_SelectPositionCreatedCopyWith(_$_SelectPositionCreated value,
          $Res Function(_$_SelectPositionCreated) then) =
      __$$_SelectPositionCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng pos});
}

/// @nodoc
class __$$_SelectPositionCreatedCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_SelectPositionCreated>
    implements _$$_SelectPositionCreatedCopyWith<$Res> {
  __$$_SelectPositionCreatedCopyWithImpl(_$_SelectPositionCreated _value,
      $Res Function(_$_SelectPositionCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_$_SelectPositionCreated(
      null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_SelectPositionCreated implements _SelectPositionCreated {
  const _$_SelectPositionCreated(this.pos);

  @override
  final LatLng pos;

  @override
  String toString() {
    return 'SelectPositionEvent.selectPositionCreated(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectPositionCreated &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectPositionCreatedCopyWith<_$_SelectPositionCreated> get copyWith =>
      __$$_SelectPositionCreatedCopyWithImpl<_$_SelectPositionCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
  }) {
    return selectPositionCreated(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
  }) {
    return selectPositionCreated?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    required TResult orElse(),
  }) {
    if (selectPositionCreated != null) {
      return selectPositionCreated(pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
  }) {
    return selectPositionCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
  }) {
    return selectPositionCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    required TResult orElse(),
  }) {
    if (selectPositionCreated != null) {
      return selectPositionCreated(this);
    }
    return orElse();
  }
}

abstract class _SelectPositionCreated implements SelectPositionEvent {
  const factory _SelectPositionCreated(final LatLng pos) =
      _$_SelectPositionCreated;

  LatLng get pos;
  @JsonKey(ignore: true)
  _$$_SelectPositionCreatedCopyWith<_$_SelectPositionCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCurrentPositionCopyWith<$Res> {
  factory _$$_SelectCurrentPositionCopyWith(_$_SelectCurrentPosition value,
          $Res Function(_$_SelectCurrentPosition) then) =
      __$$_SelectCurrentPositionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SelectCurrentPositionCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_SelectCurrentPosition>
    implements _$$_SelectCurrentPositionCopyWith<$Res> {
  __$$_SelectCurrentPositionCopyWithImpl(_$_SelectCurrentPosition _value,
      $Res Function(_$_SelectCurrentPosition) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SelectCurrentPosition implements _SelectCurrentPosition {
  const _$_SelectCurrentPosition();

  @override
  String toString() {
    return 'SelectPositionEvent.selectCurrentPosition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SelectCurrentPosition);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
  }) {
    return selectCurrentPosition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
  }) {
    return selectCurrentPosition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    required TResult orElse(),
  }) {
    if (selectCurrentPosition != null) {
      return selectCurrentPosition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
  }) {
    return selectCurrentPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
  }) {
    return selectCurrentPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    required TResult orElse(),
  }) {
    if (selectCurrentPosition != null) {
      return selectCurrentPosition(this);
    }
    return orElse();
  }
}

abstract class _SelectCurrentPosition implements SelectPositionEvent {
  const factory _SelectCurrentPosition() = _$_SelectCurrentPosition;
}

/// @nodoc
mixin _$SelectPositionState {
  LatLng get userCurrentPos => throw _privateConstructorUsedError;
  bool get isDeviceConnected => throw _privateConstructorUsedError;
  bool get isServiceAvailable => throw _privateConstructorUsedError;
  bool get hasPermissions => throw _privateConstructorUsedError;
  bool get isPermissionPermanentlyNegated => throw _privateConstructorUsedError;
  DateTime? get lastPositionUpdate => throw _privateConstructorUsedError;
  Either<Failure, Success>? get positionFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectPositionStateCopyWith<SelectPositionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectPositionStateCopyWith<$Res> {
  factory $SelectPositionStateCopyWith(
          SelectPositionState value, $Res Function(SelectPositionState) then) =
      _$SelectPositionStateCopyWithImpl<$Res, SelectPositionState>;
  @useResult
  $Res call(
      {LatLng userCurrentPos,
      bool isDeviceConnected,
      bool isServiceAvailable,
      bool hasPermissions,
      bool isPermissionPermanentlyNegated,
      DateTime? lastPositionUpdate,
      Either<Failure, Success>? positionFailureOrSuccess});
}

/// @nodoc
class _$SelectPositionStateCopyWithImpl<$Res, $Val extends SelectPositionState>
    implements $SelectPositionStateCopyWith<$Res> {
  _$SelectPositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCurrentPos = null,
    Object? isDeviceConnected = null,
    Object? isServiceAvailable = null,
    Object? hasPermissions = null,
    Object? isPermissionPermanentlyNegated = null,
    Object? lastPositionUpdate = freezed,
    Object? positionFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userCurrentPos: null == userCurrentPos
          ? _value.userCurrentPos
          : userCurrentPos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDeviceConnected: null == isDeviceConnected
          ? _value.isDeviceConnected
          : isDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isServiceAvailable: null == isServiceAvailable
          ? _value.isServiceAvailable
          : isServiceAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPermissions: null == hasPermissions
          ? _value.hasPermissions
          : hasPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionPermanentlyNegated: null == isPermissionPermanentlyNegated
          ? _value.isPermissionPermanentlyNegated
          : isPermissionPermanentlyNegated // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPositionUpdate: freezed == lastPositionUpdate
          ? _value.lastPositionUpdate
          : lastPositionUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      positionFailureOrSuccess: freezed == positionFailureOrSuccess
          ? _value.positionFailureOrSuccess
          : positionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectPositionStateCopyWith<$Res>
    implements $SelectPositionStateCopyWith<$Res> {
  factory _$$_SelectPositionStateCopyWith(_$_SelectPositionState value,
          $Res Function(_$_SelectPositionState) then) =
      __$$_SelectPositionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng userCurrentPos,
      bool isDeviceConnected,
      bool isServiceAvailable,
      bool hasPermissions,
      bool isPermissionPermanentlyNegated,
      DateTime? lastPositionUpdate,
      Either<Failure, Success>? positionFailureOrSuccess});
}

/// @nodoc
class __$$_SelectPositionStateCopyWithImpl<$Res>
    extends _$SelectPositionStateCopyWithImpl<$Res, _$_SelectPositionState>
    implements _$$_SelectPositionStateCopyWith<$Res> {
  __$$_SelectPositionStateCopyWithImpl(_$_SelectPositionState _value,
      $Res Function(_$_SelectPositionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCurrentPos = null,
    Object? isDeviceConnected = null,
    Object? isServiceAvailable = null,
    Object? hasPermissions = null,
    Object? isPermissionPermanentlyNegated = null,
    Object? lastPositionUpdate = freezed,
    Object? positionFailureOrSuccess = freezed,
  }) {
    return _then(_$_SelectPositionState(
      userCurrentPos: null == userCurrentPos
          ? _value.userCurrentPos
          : userCurrentPos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      isDeviceConnected: null == isDeviceConnected
          ? _value.isDeviceConnected
          : isDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isServiceAvailable: null == isServiceAvailable
          ? _value.isServiceAvailable
          : isServiceAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPermissions: null == hasPermissions
          ? _value.hasPermissions
          : hasPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionPermanentlyNegated: null == isPermissionPermanentlyNegated
          ? _value.isPermissionPermanentlyNegated
          : isPermissionPermanentlyNegated // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPositionUpdate: freezed == lastPositionUpdate
          ? _value.lastPositionUpdate
          : lastPositionUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      positionFailureOrSuccess: freezed == positionFailureOrSuccess
          ? _value.positionFailureOrSuccess
          : positionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_SelectPositionState implements _SelectPositionState {
  const _$_SelectPositionState(
      {required this.userCurrentPos,
      this.isDeviceConnected = false,
      this.isServiceAvailable = false,
      this.hasPermissions = false,
      this.isPermissionPermanentlyNegated = false,
      this.lastPositionUpdate = null,
      this.positionFailureOrSuccess});

  @override
  final LatLng userCurrentPos;
  @override
  @JsonKey()
  final bool isDeviceConnected;
  @override
  @JsonKey()
  final bool isServiceAvailable;
  @override
  @JsonKey()
  final bool hasPermissions;
  @override
  @JsonKey()
  final bool isPermissionPermanentlyNegated;
  @override
  @JsonKey()
  final DateTime? lastPositionUpdate;
  @override
  final Either<Failure, Success>? positionFailureOrSuccess;

  @override
  String toString() {
    return 'SelectPositionState(userCurrentPos: $userCurrentPos, isDeviceConnected: $isDeviceConnected, isServiceAvailable: $isServiceAvailable, hasPermissions: $hasPermissions, isPermissionPermanentlyNegated: $isPermissionPermanentlyNegated, lastPositionUpdate: $lastPositionUpdate, positionFailureOrSuccess: $positionFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectPositionState &&
            (identical(other.userCurrentPos, userCurrentPos) ||
                other.userCurrentPos == userCurrentPos) &&
            (identical(other.isDeviceConnected, isDeviceConnected) ||
                other.isDeviceConnected == isDeviceConnected) &&
            (identical(other.isServiceAvailable, isServiceAvailable) ||
                other.isServiceAvailable == isServiceAvailable) &&
            (identical(other.hasPermissions, hasPermissions) ||
                other.hasPermissions == hasPermissions) &&
            (identical(other.isPermissionPermanentlyNegated,
                    isPermissionPermanentlyNegated) ||
                other.isPermissionPermanentlyNegated ==
                    isPermissionPermanentlyNegated) &&
            (identical(other.lastPositionUpdate, lastPositionUpdate) ||
                other.lastPositionUpdate == lastPositionUpdate) &&
            (identical(
                    other.positionFailureOrSuccess, positionFailureOrSuccess) ||
                other.positionFailureOrSuccess == positionFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userCurrentPos,
      isDeviceConnected,
      isServiceAvailable,
      hasPermissions,
      isPermissionPermanentlyNegated,
      lastPositionUpdate,
      positionFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectPositionStateCopyWith<_$_SelectPositionState> get copyWith =>
      __$$_SelectPositionStateCopyWithImpl<_$_SelectPositionState>(
          this, _$identity);
}

abstract class _SelectPositionState implements SelectPositionState {
  const factory _SelectPositionState(
          {required final LatLng userCurrentPos,
          final bool isDeviceConnected,
          final bool isServiceAvailable,
          final bool hasPermissions,
          final bool isPermissionPermanentlyNegated,
          final DateTime? lastPositionUpdate,
          final Either<Failure, Success>? positionFailureOrSuccess}) =
      _$_SelectPositionState;

  @override
  LatLng get userCurrentPos;
  @override
  bool get isDeviceConnected;
  @override
  bool get isServiceAvailable;
  @override
  bool get hasPermissions;
  @override
  bool get isPermissionPermanentlyNegated;
  @override
  DateTime? get lastPositionUpdate;
  @override
  Either<Failure, Success>? get positionFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SelectPositionStateCopyWith<_$_SelectPositionState> get copyWith =>
      throw _privateConstructorUsedError;
}
