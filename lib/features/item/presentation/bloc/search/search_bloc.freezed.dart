// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResetFiltersCopyWith<$Res> {
  factory _$$_ResetFiltersCopyWith(
          _$_ResetFilters value, $Res Function(_$_ResetFilters) then) =
      __$$_ResetFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetFiltersCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_ResetFilters>
    implements _$$_ResetFiltersCopyWith<$Res> {
  __$$_ResetFiltersCopyWithImpl(
      _$_ResetFilters _value, $Res Function(_$_ResetFilters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetFilters implements _ResetFilters {
  const _$_ResetFilters();

  @override
  String toString() {
    return 'SearchEvent.resetFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
  }) {
    return resetFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
  }) {
    return resetFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
  }) {
    return resetFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
  }) {
    return resetFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters(this);
    }
    return orElse();
  }
}

abstract class _ResetFilters implements SearchEvent {
  const factory _ResetFilters() = _$_ResetFilters;
}

/// @nodoc
abstract class _$$_FoundCheckTriggeredCopyWith<$Res> {
  factory _$$_FoundCheckTriggeredCopyWith(_$_FoundCheckTriggered value,
          $Res Function(_$_FoundCheckTriggered) then) =
      __$$_FoundCheckTriggeredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FoundCheckTriggeredCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_FoundCheckTriggered>
    implements _$$_FoundCheckTriggeredCopyWith<$Res> {
  __$$_FoundCheckTriggeredCopyWithImpl(_$_FoundCheckTriggered _value,
      $Res Function(_$_FoundCheckTriggered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FoundCheckTriggered implements _FoundCheckTriggered {
  const _$_FoundCheckTriggered();

  @override
  String toString() {
    return 'SearchEvent.foundCheckTriggered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FoundCheckTriggered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
  }) {
    return foundCheckTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
  }) {
    return foundCheckTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    required TResult orElse(),
  }) {
    if (foundCheckTriggered != null) {
      return foundCheckTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
  }) {
    return foundCheckTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
  }) {
    return foundCheckTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    required TResult orElse(),
  }) {
    if (foundCheckTriggered != null) {
      return foundCheckTriggered(this);
    }
    return orElse();
  }
}

abstract class _FoundCheckTriggered implements SearchEvent {
  const factory _FoundCheckTriggered() = _$_FoundCheckTriggered;
}

/// @nodoc
abstract class _$$_LostCheckTriggeredCopyWith<$Res> {
  factory _$$_LostCheckTriggeredCopyWith(_$_LostCheckTriggered value,
          $Res Function(_$_LostCheckTriggered) then) =
      __$$_LostCheckTriggeredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LostCheckTriggeredCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_LostCheckTriggered>
    implements _$$_LostCheckTriggeredCopyWith<$Res> {
  __$$_LostCheckTriggeredCopyWithImpl(
      _$_LostCheckTriggered _value, $Res Function(_$_LostCheckTriggered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LostCheckTriggered implements _LostCheckTriggered {
  const _$_LostCheckTriggered();

  @override
  String toString() {
    return 'SearchEvent.lostCheckTriggered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LostCheckTriggered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
  }) {
    return lostCheckTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
  }) {
    return lostCheckTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    required TResult orElse(),
  }) {
    if (lostCheckTriggered != null) {
      return lostCheckTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
  }) {
    return lostCheckTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
  }) {
    return lostCheckTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    required TResult orElse(),
  }) {
    if (lostCheckTriggered != null) {
      return lostCheckTriggered(this);
    }
    return orElse();
  }
}

abstract class _LostCheckTriggered implements SearchEvent {
  const factory _LostCheckTriggered() = _$_LostCheckTriggered;
}

/// @nodoc
abstract class _$$_PositionSelectedCopyWith<$Res> {
  factory _$$_PositionSelectedCopyWith(
          _$_PositionSelected value, $Res Function(_$_PositionSelected) then) =
      __$$_PositionSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng pos});
}

/// @nodoc
class __$$_PositionSelectedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_PositionSelected>
    implements _$$_PositionSelectedCopyWith<$Res> {
  __$$_PositionSelectedCopyWithImpl(
      _$_PositionSelected _value, $Res Function(_$_PositionSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_$_PositionSelected(
      null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_PositionSelected implements _PositionSelected {
  const _$_PositionSelected(this.pos);

  @override
  final LatLng pos;

  @override
  String toString() {
    return 'SearchEvent.positionSelected(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionSelected &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionSelectedCopyWith<_$_PositionSelected> get copyWith =>
      __$$_PositionSelectedCopyWithImpl<_$_PositionSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
  }) {
    return positionSelected(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
  }) {
    return positionSelected?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    required TResult orElse(),
  }) {
    if (positionSelected != null) {
      return positionSelected(pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
  }) {
    return positionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
  }) {
    return positionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    required TResult orElse(),
  }) {
    if (positionSelected != null) {
      return positionSelected(this);
    }
    return orElse();
  }
}

abstract class _PositionSelected implements SearchEvent {
  const factory _PositionSelected(final LatLng pos) = _$_PositionSelected;

  LatLng get pos;
  @JsonKey(ignore: true)
  _$$_PositionSelectedCopyWith<_$_PositionSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get foundChecked => throw _privateConstructorUsedError;
  bool get lostChecked => throw _privateConstructorUsedError;
  List<SearchItem> get results => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  LatLng get pos => throw _privateConstructorUsedError;
  int get category => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get hasLocationPermissions => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  Either<SearchFailure, Success>? get searchFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool foundChecked,
      bool lostChecked,
      List<SearchItem> results,
      String address,
      LatLng pos,
      int category,
      DateTime? dateTime,
      bool isConnected,
      bool hasLocationPermissions,
      String token,
      Either<SearchFailure, Success>? searchFailureOrSuccess});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundChecked = null,
    Object? lostChecked = null,
    Object? results = null,
    Object? address = null,
    Object? pos = null,
    Object? category = null,
    Object? dateTime = freezed,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? token = null,
    Object? searchFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      foundChecked: null == foundChecked
          ? _value.foundChecked
          : foundChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lostChecked: null == lostChecked
          ? _value.lostChecked
          : lostChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermissions: null == hasLocationPermissions
          ? _value.hasLocationPermissions
          : hasLocationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      searchFailureOrSuccess: freezed == searchFailureOrSuccess
          ? _value.searchFailureOrSuccess
          : searchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<SearchFailure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool foundChecked,
      bool lostChecked,
      List<SearchItem> results,
      String address,
      LatLng pos,
      int category,
      DateTime? dateTime,
      bool isConnected,
      bool hasLocationPermissions,
      String token,
      Either<SearchFailure, Success>? searchFailureOrSuccess});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundChecked = null,
    Object? lostChecked = null,
    Object? results = null,
    Object? address = null,
    Object? pos = null,
    Object? category = null,
    Object? dateTime = freezed,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? token = null,
    Object? searchFailureOrSuccess = freezed,
  }) {
    return _then(_$_SearchState(
      foundChecked: null == foundChecked
          ? _value.foundChecked
          : foundChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lostChecked: null == lostChecked
          ? _value.lostChecked
          : lostChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermissions: null == hasLocationPermissions
          ? _value.hasLocationPermissions
          : hasLocationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      searchFailureOrSuccess: freezed == searchFailureOrSuccess
          ? _value.searchFailureOrSuccess
          : searchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<SearchFailure, Success>?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.foundChecked,
      required this.lostChecked,
      required final List<SearchItem> results,
      required this.address,
      required this.pos,
      required this.category,
      required this.dateTime,
      this.isConnected = false,
      this.hasLocationPermissions = false,
      this.token = "",
      this.searchFailureOrSuccess})
      : _results = results;

  @override
  final bool foundChecked;
  @override
  final bool lostChecked;
  final List<SearchItem> _results;
  @override
  List<SearchItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final String address;
  @override
  final LatLng pos;
  @override
  final int category;
  @override
  final DateTime? dateTime;
  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final bool hasLocationPermissions;
  @override
  @JsonKey()
  final String token;
  @override
  final Either<SearchFailure, Success>? searchFailureOrSuccess;

  @override
  String toString() {
    return 'SearchState(foundChecked: $foundChecked, lostChecked: $lostChecked, results: $results, address: $address, pos: $pos, category: $category, dateTime: $dateTime, isConnected: $isConnected, hasLocationPermissions: $hasLocationPermissions, token: $token, searchFailureOrSuccess: $searchFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.foundChecked, foundChecked) ||
                other.foundChecked == foundChecked) &&
            (identical(other.lostChecked, lostChecked) ||
                other.lostChecked == lostChecked) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.hasLocationPermissions, hasLocationPermissions) ||
                other.hasLocationPermissions == hasLocationPermissions) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.searchFailureOrSuccess, searchFailureOrSuccess) ||
                other.searchFailureOrSuccess == searchFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      foundChecked,
      lostChecked,
      const DeepCollectionEquality().hash(_results),
      address,
      pos,
      category,
      dateTime,
      isConnected,
      hasLocationPermissions,
      token,
      searchFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
          {required final bool foundChecked,
          required final bool lostChecked,
          required final List<SearchItem> results,
          required final String address,
          required final LatLng pos,
          required final int category,
          required final DateTime? dateTime,
          final bool isConnected,
          final bool hasLocationPermissions,
          final String token,
          final Either<SearchFailure, Success>? searchFailureOrSuccess}) =
      _$_SearchState;

  @override
  bool get foundChecked;
  @override
  bool get lostChecked;
  @override
  List<SearchItem> get results;
  @override
  String get address;
  @override
  LatLng get pos;
  @override
  int get category;
  @override
  DateTime? get dateTime;
  @override
  bool get isConnected;
  @override
  bool get hasLocationPermissions;
  @override
  String get token;
  @override
  Either<SearchFailure, Success>? get searchFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
