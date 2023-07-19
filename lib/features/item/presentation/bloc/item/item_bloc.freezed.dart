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
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemEventCopyWith<ItemEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEventCopyWith<$Res> {
  factory $ItemEventCopyWith(ItemEvent value, $Res Function(ItemEvent) then) =
      _$ItemEventCopyWithImpl<$Res, ItemEvent>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ItemEventCopyWithImpl<$Res, $Val extends ItemEvent>
    implements $ItemEventCopyWith<$Res> {
  _$ItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCreatedCopyWith<$Res>
    implements $ItemEventCopyWith<$Res> {
  factory _$$_ItemCreatedCopyWith(
          _$_ItemCreated value, $Res Function(_$_ItemCreated) then) =
      __$$_ItemCreatedCopyWithImpl<$Res>;
  @override
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
  }) {
    return itemCreated(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
  }) {
    return itemCreated?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
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
  }) {
    return itemCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
  }) {
    return itemCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
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

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCreatedCopyWith<_$_ItemCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
  Item? get item => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Success>? get loadFailureOrSuccess =>
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
      String token,
      bool isLoading,
      Either<Failure, Success>? loadFailureOrSuccess});
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
    Object? token = null,
    Object? isLoading = null,
    Object? loadFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
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
      String token,
      bool isLoading,
      Either<Failure, Success>? loadFailureOrSuccess});
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
    Object? token = null,
    Object? isLoading = null,
    Object? loadFailureOrSuccess = freezed,
  }) {
    return _then(_$_ItemState(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
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
    ));
  }
}

/// @nodoc

class _$_ItemState implements _ItemState {
  const _$_ItemState(
      {required this.item,
      required this.token,
      this.isLoading = true,
      this.loadFailureOrSuccess});

  @override
  final Item? item;
  @override
  final String token;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Either<Failure, Success>? loadFailureOrSuccess;

  @override
  String toString() {
    return 'ItemState(item: $item, token: $token, isLoading: $isLoading, loadFailureOrSuccess: $loadFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemState &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, item, token, isLoading, loadFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      __$$_ItemStateCopyWithImpl<_$_ItemState>(this, _$identity);
}

abstract class _ItemState implements ItemState {
  const factory _ItemState(
      {required final Item? item,
      required final String token,
      final bool isLoading,
      final Either<Failure, Success>? loadFailureOrSuccess}) = _$_ItemState;

  @override
  Item? get item;
  @override
  String get token;
  @override
  bool get isLoading;
  @override
  Either<Failure, Success>? get loadFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
