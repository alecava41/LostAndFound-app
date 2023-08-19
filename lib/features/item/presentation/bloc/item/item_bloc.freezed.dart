// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function() itemDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function()? itemDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function()? itemDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ItemDeleted value) itemDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ItemDeleted value)? itemDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ItemDeleted value)? itemDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res, ItemEvent>;
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res, $Val extends ItemEvent>
    implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ItemCreatedCopyWith<$Res> {
  factory _$$_ItemCreatedCopyWith(
          _$_ItemCreated value, $Res Function(_$_ItemCreated) then) =
      __$$_ItemCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_ItemCreatedCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$_ItemCreated>
    implements _$$_ItemCreatedCopyWith<$Res> {
  __$$_ItemCreatedCopyWithImpl(
      _$_ItemCreated _value, $Res Function(_$_ItemCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_ItemCreated(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ItemCreated implements _ItemCreated {
  const _$_ItemCreated(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'ItemEvent.itemCreated(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCreated &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCreatedCopyWith<_$_ItemCreated> get copyWith =>
      __$$_ItemCreatedCopyWithImpl<_$_ItemCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function() itemDeleted,
  }) {
    return itemCreated(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function()? itemDeleted,
  }) {
    return itemCreated?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function()? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemCreated != null) {
      return itemCreated(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ItemDeleted value) itemDeleted,
  }) {
    return itemCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ItemDeleted value)? itemDeleted,
  }) {
    return itemCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ItemDeleted value)? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemCreated != null) {
      return itemCreated(this);
    }
    return orElse();
  }
}

abstract class _ItemCreated implements ItemEvent {
  const factory _ItemCreated(final int id) = _$_ItemCreated;

  int get id;
  @JsonKey(ignore: true)
  _$$_ItemCreatedCopyWith<_$_ItemCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemRefreshedCopyWith<$Res> {
  factory _$$_ItemRefreshedCopyWith(
          _$_ItemRefreshed value, $Res Function(_$_ItemRefreshed) then) =
      __$$_ItemRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ItemRefreshedCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$_ItemRefreshed>
    implements _$$_ItemRefreshedCopyWith<$Res> {
  __$$_ItemRefreshedCopyWithImpl(
      _$_ItemRefreshed _value, $Res Function(_$_ItemRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ItemRefreshed implements _ItemRefreshed {
  const _$_ItemRefreshed();

  @override
  String toString() {
    return 'ItemEvent.itemRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ItemRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function() itemDeleted,
  }) {
    return itemRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function()? itemDeleted,
  }) {
    return itemRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function()? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemRefreshed != null) {
      return itemRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ItemDeleted value) itemDeleted,
  }) {
    return itemRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ItemDeleted value)? itemDeleted,
  }) {
    return itemRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ItemDeleted value)? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemRefreshed != null) {
      return itemRefreshed(this);
    }
    return orElse();
  }
}

abstract class _ItemRefreshed implements ItemEvent {
  const factory _ItemRefreshed() = _$_ItemRefreshed;
}

/// @nodoc
abstract class _$$_ItemSolvedCopyWith<$Res> {
  factory _$$_ItemSolvedCopyWith(
          _$_ItemSolved value, $Res Function(_$_ItemSolved) then) =
      __$$_ItemSolvedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ItemSolvedCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$_ItemSolved>
    implements _$$_ItemSolvedCopyWith<$Res> {
  __$$_ItemSolvedCopyWithImpl(
      _$_ItemSolved _value, $Res Function(_$_ItemSolved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ItemSolved implements _ItemSolved {
  const _$_ItemSolved();

  @override
  String toString() {
    return 'ItemEvent.itemSolved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ItemSolved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function() itemDeleted,
  }) {
    return itemSolved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function()? itemDeleted,
  }) {
    return itemSolved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function()? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemSolved != null) {
      return itemSolved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ItemDeleted value) itemDeleted,
  }) {
    return itemSolved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ItemDeleted value)? itemDeleted,
  }) {
    return itemSolved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ItemDeleted value)? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemSolved != null) {
      return itemSolved(this);
    }
    return orElse();
  }
}

abstract class _ItemSolved implements ItemEvent {
  const factory _ItemSolved() = _$_ItemSolved;
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
    extends _$ItemEventCopyWithImpl<$Res, _$_ClaimRead>
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
    return 'ItemEvent.claimRead(id: $id)';
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
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function() itemDeleted,
  }) {
    return claimRead(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function()? itemDeleted,
  }) {
    return claimRead?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function()? itemDeleted,
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
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ItemDeleted value) itemDeleted,
  }) {
    return claimRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ItemDeleted value)? itemDeleted,
  }) {
    return claimRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ItemDeleted value)? itemDeleted,
    required TResult orElse(),
  }) {
    if (claimRead != null) {
      return claimRead(this);
    }
    return orElse();
  }
}

abstract class _ClaimRead implements ItemEvent {
  const factory _ClaimRead(final int id) = _$_ClaimRead;

  int get id;
  @JsonKey(ignore: true)
  _$$_ClaimReadCopyWith<_$_ClaimRead> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ItemDeletedCopyWith<$Res> {
  factory _$$_ItemDeletedCopyWith(
          _$_ItemDeleted value, $Res Function(_$_ItemDeleted) then) =
      __$$_ItemDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ItemDeletedCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$_ItemDeleted>
    implements _$$_ItemDeletedCopyWith<$Res> {
  __$$_ItemDeletedCopyWithImpl(
      _$_ItemDeleted _value, $Res Function(_$_ItemDeleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ItemDeleted implements _ItemDeleted {
  const _$_ItemDeleted();

  @override
  String toString() {
    return 'ItemEvent.itemDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ItemDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function() itemDeleted,
  }) {
    return itemDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function()? itemDeleted,
  }) {
    return itemDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function()? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemDeleted != null) {
      return itemDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ItemDeleted value) itemDeleted,
  }) {
    return itemDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ItemDeleted value)? itemDeleted,
  }) {
    return itemDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ItemDeleted value)? itemDeleted,
    required TResult orElse(),
  }) {
    if (itemDeleted != null) {
      return itemDeleted(this);
    }
    return orElse();
  }
}

abstract class _ItemDeleted implements ItemEvent {
  const factory _ItemDeleted() = _$_ItemDeleted;
}

/// @nodoc
mixin _$ItemState {
  Item? get item => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Success>? get loadFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get solveFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get deleteFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemStateCopyWith<ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemStateCopyWith<$Res> {
  factory $ItemStateCopyWith(ItemState value, $Res Function(ItemState) then) =
      _$ItemStateCopyWithImpl<$Res, ItemState>;
  @useResult
  $Res call(
      {Item? item,
      int userId,
      String token,
      bool isLoading,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? solveFailureOrSuccess,
      Either<Failure, Success>? deleteFailureOrSuccess});
}

/// @nodoc
class _$ItemStateCopyWithImpl<$Res, $Val extends ItemState>
    implements $ItemStateCopyWith<$Res> {
  _$ItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? userId = null,
    Object? token = null,
    Object? isLoading = null,
    Object? loadFailureOrSuccess = freezed,
    Object? solveFailureOrSuccess = freezed,
    Object? deleteFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      solveFailureOrSuccess: freezed == solveFailureOrSuccess
          ? _value.solveFailureOrSuccess
          : solveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      deleteFailureOrSuccess: freezed == deleteFailureOrSuccess
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemStateCopyWith<$Res> implements $ItemStateCopyWith<$Res> {
  factory _$$_ItemStateCopyWith(
          _$_ItemState value, $Res Function(_$_ItemState) then) =
      __$$_ItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Item? item,
      int userId,
      String token,
      bool isLoading,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? solveFailureOrSuccess,
      Either<Failure, Success>? deleteFailureOrSuccess});
}

/// @nodoc
class __$$_ItemStateCopyWithImpl<$Res>
    extends _$ItemStateCopyWithImpl<$Res, _$_ItemState>
    implements _$$_ItemStateCopyWith<$Res> {
  __$$_ItemStateCopyWithImpl(
      _$_ItemState _value, $Res Function(_$_ItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? userId = null,
    Object? token = null,
    Object? isLoading = null,
    Object? loadFailureOrSuccess = freezed,
    Object? solveFailureOrSuccess = freezed,
    Object? deleteFailureOrSuccess = freezed,
  }) {
    return _then(_$_ItemState(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      solveFailureOrSuccess: freezed == solveFailureOrSuccess
          ? _value.solveFailureOrSuccess
          : solveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      deleteFailureOrSuccess: freezed == deleteFailureOrSuccess
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_ItemState implements _ItemState {
  const _$_ItemState(
      {required this.item,
      required this.userId,
      required this.token,
      this.isLoading = true,
      this.loadFailureOrSuccess,
      this.solveFailureOrSuccess,
      this.deleteFailureOrSuccess});

  @override
  final Item? item;
  @override
  final int userId;
  @override
  final String token;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Either<Failure, Success>? loadFailureOrSuccess;
  @override
  final Either<Failure, Success>? solveFailureOrSuccess;
  @override
  final Either<Failure, Success>? deleteFailureOrSuccess;

  @override
  String toString() {
    return 'ItemState(item: $item, userId: $userId, token: $token, isLoading: $isLoading, loadFailureOrSuccess: $loadFailureOrSuccess, solveFailureOrSuccess: $solveFailureOrSuccess, deleteFailureOrSuccess: $deleteFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemState &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess) &&
            (identical(other.solveFailureOrSuccess, solveFailureOrSuccess) ||
                other.solveFailureOrSuccess == solveFailureOrSuccess) &&
            (identical(other.deleteFailureOrSuccess, deleteFailureOrSuccess) ||
                other.deleteFailureOrSuccess == deleteFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, userId, token, isLoading,
      loadFailureOrSuccess, solveFailureOrSuccess, deleteFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      __$$_ItemStateCopyWithImpl<_$_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemState {
  const factory _ItemState(
      {required final Item? item,
      required final int userId,
      required final String token,
      final bool isLoading,
      final Either<Failure, Success>? loadFailureOrSuccess,
      final Either<Failure, Success>? solveFailureOrSuccess,
      final Either<Failure, Success>? deleteFailureOrSuccess}) = _$_ItemState;

  @override
  Item? get item;
  @override
  int get userId;
  @override
  String get token;
  @override
  bool get isLoading;
  @override
  Either<Failure, Success>? get loadFailureOrSuccess;
  @override
  Either<Failure, Success>? get solveFailureOrSuccess;
  @override
  Either<Failure, Success>? get deleteFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
