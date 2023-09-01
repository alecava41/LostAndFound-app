// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeCreated,
    required TResult Function() homeRefreshed,
    required TResult Function(ItemType type) homeSectionRefreshed,
    required TResult Function() restoreInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeCreated,
    TResult? Function()? homeRefreshed,
    TResult? Function(ItemType type)? homeSectionRefreshed,
    TResult? Function()? restoreInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeCreated,
    TResult Function()? homeRefreshed,
    TResult Function(ItemType type)? homeSectionRefreshed,
    TResult Function()? restoreInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCreated value) homeCreated,
    required TResult Function(_HomeRefreshed value) homeRefreshed,
    required TResult Function(_HomeSectionRefreshed value) homeSectionRefreshed,
    required TResult Function(_RestoreInitial value) restoreInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCreated value)? homeCreated,
    TResult? Function(_HomeRefreshed value)? homeRefreshed,
    TResult? Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult? Function(_RestoreInitial value)? restoreInitial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCreated value)? homeCreated,
    TResult Function(_HomeRefreshed value)? homeRefreshed,
    TResult Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult Function(_RestoreInitial value)? restoreInitial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_HomeCreatedCopyWith<$Res> {
  factory _$$_HomeCreatedCopyWith(
          _$_HomeCreated value, $Res Function(_$_HomeCreated) then) =
      __$$_HomeCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeCreatedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeCreated>
    implements _$$_HomeCreatedCopyWith<$Res> {
  __$$_HomeCreatedCopyWithImpl(
      _$_HomeCreated _value, $Res Function(_$_HomeCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeCreated implements _HomeCreated {
  const _$_HomeCreated();

  @override
  String toString() {
    return 'HomeEvent.homeCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeCreated,
    required TResult Function() homeRefreshed,
    required TResult Function(ItemType type) homeSectionRefreshed,
    required TResult Function() restoreInitial,
  }) {
    return homeCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeCreated,
    TResult? Function()? homeRefreshed,
    TResult? Function(ItemType type)? homeSectionRefreshed,
    TResult? Function()? restoreInitial,
  }) {
    return homeCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeCreated,
    TResult Function()? homeRefreshed,
    TResult Function(ItemType type)? homeSectionRefreshed,
    TResult Function()? restoreInitial,
    required TResult orElse(),
  }) {
    if (homeCreated != null) {
      return homeCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCreated value) homeCreated,
    required TResult Function(_HomeRefreshed value) homeRefreshed,
    required TResult Function(_HomeSectionRefreshed value) homeSectionRefreshed,
    required TResult Function(_RestoreInitial value) restoreInitial,
  }) {
    return homeCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCreated value)? homeCreated,
    TResult? Function(_HomeRefreshed value)? homeRefreshed,
    TResult? Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult? Function(_RestoreInitial value)? restoreInitial,
  }) {
    return homeCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCreated value)? homeCreated,
    TResult Function(_HomeRefreshed value)? homeRefreshed,
    TResult Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult Function(_RestoreInitial value)? restoreInitial,
    required TResult orElse(),
  }) {
    if (homeCreated != null) {
      return homeCreated(this);
    }
    return orElse();
  }
}

abstract class _HomeCreated implements HomeEvent {
  const factory _HomeCreated() = _$_HomeCreated;
}

/// @nodoc
abstract class _$$_HomeRefreshedCopyWith<$Res> {
  factory _$$_HomeRefreshedCopyWith(
          _$_HomeRefreshed value, $Res Function(_$_HomeRefreshed) then) =
      __$$_HomeRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_HomeRefreshedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeRefreshed>
    implements _$$_HomeRefreshedCopyWith<$Res> {
  __$$_HomeRefreshedCopyWithImpl(
      _$_HomeRefreshed _value, $Res Function(_$_HomeRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_HomeRefreshed implements _HomeRefreshed {
  const _$_HomeRefreshed();

  @override
  String toString() {
    return 'HomeEvent.homeRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_HomeRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeCreated,
    required TResult Function() homeRefreshed,
    required TResult Function(ItemType type) homeSectionRefreshed,
    required TResult Function() restoreInitial,
  }) {
    return homeRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeCreated,
    TResult? Function()? homeRefreshed,
    TResult? Function(ItemType type)? homeSectionRefreshed,
    TResult? Function()? restoreInitial,
  }) {
    return homeRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeCreated,
    TResult Function()? homeRefreshed,
    TResult Function(ItemType type)? homeSectionRefreshed,
    TResult Function()? restoreInitial,
    required TResult orElse(),
  }) {
    if (homeRefreshed != null) {
      return homeRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCreated value) homeCreated,
    required TResult Function(_HomeRefreshed value) homeRefreshed,
    required TResult Function(_HomeSectionRefreshed value) homeSectionRefreshed,
    required TResult Function(_RestoreInitial value) restoreInitial,
  }) {
    return homeRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCreated value)? homeCreated,
    TResult? Function(_HomeRefreshed value)? homeRefreshed,
    TResult? Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult? Function(_RestoreInitial value)? restoreInitial,
  }) {
    return homeRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCreated value)? homeCreated,
    TResult Function(_HomeRefreshed value)? homeRefreshed,
    TResult Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult Function(_RestoreInitial value)? restoreInitial,
    required TResult orElse(),
  }) {
    if (homeRefreshed != null) {
      return homeRefreshed(this);
    }
    return orElse();
  }
}

abstract class _HomeRefreshed implements HomeEvent {
  const factory _HomeRefreshed() = _$_HomeRefreshed;
}

/// @nodoc
abstract class _$$_HomeSectionRefreshedCopyWith<$Res> {
  factory _$$_HomeSectionRefreshedCopyWith(_$_HomeSectionRefreshed value,
          $Res Function(_$_HomeSectionRefreshed) then) =
      __$$_HomeSectionRefreshedCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemType type});
}

/// @nodoc
class __$$_HomeSectionRefreshedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_HomeSectionRefreshed>
    implements _$$_HomeSectionRefreshedCopyWith<$Res> {
  __$$_HomeSectionRefreshedCopyWithImpl(_$_HomeSectionRefreshed _value,
      $Res Function(_$_HomeSectionRefreshed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$_HomeSectionRefreshed(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
    ));
  }
}

/// @nodoc

class _$_HomeSectionRefreshed implements _HomeSectionRefreshed {
  const _$_HomeSectionRefreshed(this.type);

  @override
  final ItemType type;

  @override
  String toString() {
    return 'HomeEvent.homeSectionRefreshed(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeSectionRefreshed &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeSectionRefreshedCopyWith<_$_HomeSectionRefreshed> get copyWith =>
      __$$_HomeSectionRefreshedCopyWithImpl<_$_HomeSectionRefreshed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeCreated,
    required TResult Function() homeRefreshed,
    required TResult Function(ItemType type) homeSectionRefreshed,
    required TResult Function() restoreInitial,
  }) {
    return homeSectionRefreshed(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeCreated,
    TResult? Function()? homeRefreshed,
    TResult? Function(ItemType type)? homeSectionRefreshed,
    TResult? Function()? restoreInitial,
  }) {
    return homeSectionRefreshed?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeCreated,
    TResult Function()? homeRefreshed,
    TResult Function(ItemType type)? homeSectionRefreshed,
    TResult Function()? restoreInitial,
    required TResult orElse(),
  }) {
    if (homeSectionRefreshed != null) {
      return homeSectionRefreshed(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCreated value) homeCreated,
    required TResult Function(_HomeRefreshed value) homeRefreshed,
    required TResult Function(_HomeSectionRefreshed value) homeSectionRefreshed,
    required TResult Function(_RestoreInitial value) restoreInitial,
  }) {
    return homeSectionRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCreated value)? homeCreated,
    TResult? Function(_HomeRefreshed value)? homeRefreshed,
    TResult? Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult? Function(_RestoreInitial value)? restoreInitial,
  }) {
    return homeSectionRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCreated value)? homeCreated,
    TResult Function(_HomeRefreshed value)? homeRefreshed,
    TResult Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult Function(_RestoreInitial value)? restoreInitial,
    required TResult orElse(),
  }) {
    if (homeSectionRefreshed != null) {
      return homeSectionRefreshed(this);
    }
    return orElse();
  }
}

abstract class _HomeSectionRefreshed implements HomeEvent {
  const factory _HomeSectionRefreshed(final ItemType type) =
      _$_HomeSectionRefreshed;

  ItemType get type;
  @JsonKey(ignore: true)
  _$$_HomeSectionRefreshedCopyWith<_$_HomeSectionRefreshed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RestoreInitialCopyWith<$Res> {
  factory _$$_RestoreInitialCopyWith(
          _$_RestoreInitial value, $Res Function(_$_RestoreInitial) then) =
      __$$_RestoreInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RestoreInitialCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_RestoreInitial>
    implements _$$_RestoreInitialCopyWith<$Res> {
  __$$_RestoreInitialCopyWithImpl(
      _$_RestoreInitial _value, $Res Function(_$_RestoreInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RestoreInitial implements _RestoreInitial {
  const _$_RestoreInitial();

  @override
  String toString() {
    return 'HomeEvent.restoreInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RestoreInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() homeCreated,
    required TResult Function() homeRefreshed,
    required TResult Function(ItemType type) homeSectionRefreshed,
    required TResult Function() restoreInitial,
  }) {
    return restoreInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? homeCreated,
    TResult? Function()? homeRefreshed,
    TResult? Function(ItemType type)? homeSectionRefreshed,
    TResult? Function()? restoreInitial,
  }) {
    return restoreInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? homeCreated,
    TResult Function()? homeRefreshed,
    TResult Function(ItemType type)? homeSectionRefreshed,
    TResult Function()? restoreInitial,
    required TResult orElse(),
  }) {
    if (restoreInitial != null) {
      return restoreInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeCreated value) homeCreated,
    required TResult Function(_HomeRefreshed value) homeRefreshed,
    required TResult Function(_HomeSectionRefreshed value) homeSectionRefreshed,
    required TResult Function(_RestoreInitial value) restoreInitial,
  }) {
    return restoreInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeCreated value)? homeCreated,
    TResult? Function(_HomeRefreshed value)? homeRefreshed,
    TResult? Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult? Function(_RestoreInitial value)? restoreInitial,
  }) {
    return restoreInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeCreated value)? homeCreated,
    TResult Function(_HomeRefreshed value)? homeRefreshed,
    TResult Function(_HomeSectionRefreshed value)? homeSectionRefreshed,
    TResult Function(_RestoreInitial value)? restoreInitial,
    required TResult orElse(),
  }) {
    if (restoreInitial != null) {
      return restoreInitial(this);
    }
    return orElse();
  }
}

abstract class _RestoreInitial implements HomeEvent {
  const factory _RestoreInitial() = _$_RestoreInitial;
}

/// @nodoc
mixin _$HomeState {
  List<UserItem> get lostItems => throw _privateConstructorUsedError;
  List<UserItem> get foundItems =>
      throw _privateConstructorUsedError; // Additional parameters
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<UserItem> lostItems,
      List<UserItem> foundItems,
      String token,
      bool isLoading,
      bool hasLoadingError});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lostItems = null,
    Object? foundItems = null,
    Object? token = null,
    Object? isLoading = null,
    Object? hasLoadingError = null,
  }) {
    return _then(_value.copyWith(
      lostItems: null == lostItems
          ? _value.lostItems
          : lostItems // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      foundItems: null == foundItems
          ? _value.foundItems
          : foundItems // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<UserItem> lostItems,
      List<UserItem> foundItems,
      String token,
      bool isLoading,
      bool hasLoadingError});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lostItems = null,
    Object? foundItems = null,
    Object? token = null,
    Object? isLoading = null,
    Object? hasLoadingError = null,
  }) {
    return _then(_$_HomeState(
      lostItems: null == lostItems
          ? _value._lostItems
          : lostItems // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      foundItems: null == foundItems
          ? _value._foundItems
          : foundItems // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(
      {required final List<UserItem> lostItems,
      required final List<UserItem> foundItems,
      this.token = "",
      this.isLoading = false,
      this.hasLoadingError = false})
      : _lostItems = lostItems,
        _foundItems = foundItems;

  final List<UserItem> _lostItems;
  @override
  List<UserItem> get lostItems {
    if (_lostItems is EqualUnmodifiableListView) return _lostItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lostItems);
  }

  final List<UserItem> _foundItems;
  @override
  List<UserItem> get foundItems {
    if (_foundItems is EqualUnmodifiableListView) return _foundItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foundItems);
  }

// Additional parameters
  @override
  @JsonKey()
  final String token;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasLoadingError;

  @override
  String toString() {
    return 'HomeState(lostItems: $lostItems, foundItems: $foundItems, token: $token, isLoading: $isLoading, hasLoadingError: $hasLoadingError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality()
                .equals(other._lostItems, _lostItems) &&
            const DeepCollectionEquality()
                .equals(other._foundItems, _foundItems) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_lostItems),
      const DeepCollectionEquality().hash(_foundItems),
      token,
      isLoading,
      hasLoadingError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final List<UserItem> lostItems,
      required final List<UserItem> foundItems,
      final String token,
      final bool isLoading,
      final bool hasLoadingError}) = _$_HomeState;

  @override
  List<UserItem> get lostItems;
  @override
  List<UserItem> get foundItems;
  @override // Additional parameters
  String get token;
  @override
  bool get isLoading;
  @override
  bool get hasLoadingError;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
