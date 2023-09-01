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
    required TResult Function(int? tab, int? newClaimId) claimContentCreated,
    required TResult Function(item.Item? newItem) receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult? Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult Function(item.Item? newItem)? receivedClaimsRefreshed,
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
  @useResult
  $Res call({int? tab, int? newClaimId});
}

/// @nodoc
class __$$_ClaimContentCreatedCopyWithImpl<$Res>
    extends _$ClaimEventCopyWithImpl<$Res, _$_ClaimContentCreated>
    implements _$$_ClaimContentCreatedCopyWith<$Res> {
  __$$_ClaimContentCreatedCopyWithImpl(_$_ClaimContentCreated _value,
      $Res Function(_$_ClaimContentCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = freezed,
    Object? newClaimId = freezed,
  }) {
    return _then(_$_ClaimContentCreated(
      freezed == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == newClaimId
          ? _value.newClaimId
          : newClaimId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_ClaimContentCreated implements _ClaimContentCreated {
  const _$_ClaimContentCreated(this.tab, this.newClaimId);

  @override
  final int? tab;
  @override
  final int? newClaimId;

  @override
  String toString() {
    return 'ClaimEvent.claimContentCreated(tab: $tab, newClaimId: $newClaimId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClaimContentCreated &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.newClaimId, newClaimId) ||
                other.newClaimId == newClaimId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab, newClaimId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClaimContentCreatedCopyWith<_$_ClaimContentCreated> get copyWith =>
      __$$_ClaimContentCreatedCopyWithImpl<_$_ClaimContentCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? tab, int? newClaimId) claimContentCreated,
    required TResult Function(item.Item? newItem) receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return claimContentCreated(tab, newClaimId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult? Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return claimContentCreated?.call(tab, newClaimId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (claimContentCreated != null) {
      return claimContentCreated(tab, newClaimId);
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
  const factory _ClaimContentCreated(final int? tab, final int? newClaimId) =
      _$_ClaimContentCreated;

  int? get tab;
  int? get newClaimId;
  @JsonKey(ignore: true)
  _$$_ClaimContentCreatedCopyWith<_$_ClaimContentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ReceivedClaimsRefreshedCopyWith<$Res> {
  factory _$$_ReceivedClaimsRefreshedCopyWith(_$_ReceivedClaimsRefreshed value,
          $Res Function(_$_ReceivedClaimsRefreshed) then) =
      __$$_ReceivedClaimsRefreshedCopyWithImpl<$Res>;
  @useResult
  $Res call({item.Item? newItem});
}

/// @nodoc
class __$$_ReceivedClaimsRefreshedCopyWithImpl<$Res>
    extends _$ClaimEventCopyWithImpl<$Res, _$_ReceivedClaimsRefreshed>
    implements _$$_ReceivedClaimsRefreshedCopyWith<$Res> {
  __$$_ReceivedClaimsRefreshedCopyWithImpl(_$_ReceivedClaimsRefreshed _value,
      $Res Function(_$_ReceivedClaimsRefreshed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newItem = freezed,
  }) {
    return _then(_$_ReceivedClaimsRefreshed(
      freezed == newItem
          ? _value.newItem
          : newItem // ignore: cast_nullable_to_non_nullable
              as item.Item?,
    ));
  }
}

/// @nodoc

class _$_ReceivedClaimsRefreshed implements _ReceivedClaimsRefreshed {
  const _$_ReceivedClaimsRefreshed(this.newItem);

  @override
  final item.Item? newItem;

  @override
  String toString() {
    return 'ClaimEvent.receivedClaimsRefreshed(newItem: $newItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReceivedClaimsRefreshed &&
            (identical(other.newItem, newItem) || other.newItem == newItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReceivedClaimsRefreshedCopyWith<_$_ReceivedClaimsRefreshed>
      get copyWith =>
          __$$_ReceivedClaimsRefreshedCopyWithImpl<_$_ReceivedClaimsRefreshed>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? tab, int? newClaimId) claimContentCreated,
    required TResult Function(item.Item? newItem) receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return receivedClaimsRefreshed(newItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult? Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return receivedClaimsRefreshed?.call(newItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult Function(int id)? claimRead,
    TResult Function()? sentClaimsRefreshed,
    required TResult orElse(),
  }) {
    if (receivedClaimsRefreshed != null) {
      return receivedClaimsRefreshed(newItem);
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
  const factory _ReceivedClaimsRefreshed(final item.Item? newItem) =
      _$_ReceivedClaimsRefreshed;

  item.Item? get newItem;
  @JsonKey(ignore: true)
  _$$_ReceivedClaimsRefreshedCopyWith<_$_ReceivedClaimsRefreshed>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(int? tab, int? newClaimId) claimContentCreated,
    required TResult Function(item.Item? newItem) receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return claimRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult? Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return claimRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult Function(item.Item? newItem)? receivedClaimsRefreshed,
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
    required TResult Function(int? tab, int? newClaimId) claimContentCreated,
    required TResult Function(item.Item? newItem) receivedClaimsRefreshed,
    required TResult Function(int id) claimRead,
    required TResult Function() sentClaimsRefreshed,
  }) {
    return sentClaimsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult? Function(item.Item? newItem)? receivedClaimsRefreshed,
    TResult? Function(int id)? claimRead,
    TResult? Function()? sentClaimsRefreshed,
  }) {
    return sentClaimsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? tab, int? newClaimId)? claimContentCreated,
    TResult Function(item.Item? newItem)? receivedClaimsRefreshed,
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
// Page content
  List<ClaimReceived> get claimsReceived => throw _privateConstructorUsedError;
  List<ClaimSent> get claimsSent =>
      throw _privateConstructorUsedError; // Additional parameters
  String get token => throw _privateConstructorUsedError;
  bool get isLoadingReceived => throw _privateConstructorUsedError;
  bool get isLoadingSent => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool? get needToSwitchTab => throw _privateConstructorUsedError;

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
      bool hasLoadingError,
      bool? needToSwitchTab});
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
    Object? hasLoadingError = null,
    Object? needToSwitchTab = freezed,
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
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      needToSwitchTab: freezed == needToSwitchTab
          ? _value.needToSwitchTab
          : needToSwitchTab // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      bool hasLoadingError,
      bool? needToSwitchTab});
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
    Object? hasLoadingError = null,
    Object? needToSwitchTab = freezed,
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
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      needToSwitchTab: freezed == needToSwitchTab
          ? _value.needToSwitchTab
          : needToSwitchTab // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      this.hasLoadingError = false,
      this.needToSwitchTab = null})
      : _claimsReceived = claimsReceived,
        _claimsSent = claimsSent;

// Page content
  final List<ClaimReceived> _claimsReceived;
// Page content
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

// Additional parameters
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
  @JsonKey()
  final bool hasLoadingError;
  @override
  @JsonKey()
  final bool? needToSwitchTab;

  @override
  String toString() {
    return 'ClaimState(claimsReceived: $claimsReceived, claimsSent: $claimsSent, token: $token, isLoadingReceived: $isLoadingReceived, isLoadingSent: $isLoadingSent, hasLoadingError: $hasLoadingError, needToSwitchTab: $needToSwitchTab)';
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
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.needToSwitchTab, needToSwitchTab) ||
                other.needToSwitchTab == needToSwitchTab));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_claimsReceived),
      const DeepCollectionEquality().hash(_claimsSent),
      token,
      isLoadingReceived,
      isLoadingSent,
      hasLoadingError,
      needToSwitchTab);

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
      final bool hasLoadingError,
      final bool? needToSwitchTab}) = _$_ClaimState;

  @override // Page content
  List<ClaimReceived> get claimsReceived;
  @override
  List<ClaimSent> get claimsSent;
  @override // Additional parameters
  String get token;
  @override
  bool get isLoadingReceived;
  @override
  bool get isLoadingSent;
  @override
  bool get hasLoadingError;
  @override
  bool? get needToSwitchTab;
  @override
  @JsonKey(ignore: true)
  _$$_ClaimStateCopyWith<_$_ClaimState> get copyWith =>
      throw _privateConstructorUsedError;
}
