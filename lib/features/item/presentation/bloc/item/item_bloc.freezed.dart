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
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemCreated value) itemCreated,
    required TResult Function(_ItemRefreshed value) itemRefreshed,
    required TResult Function(_ItemSolved value) itemSolved,
    required TResult Function(_ClaimRead value) claimRead,
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
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
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
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
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
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
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
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
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
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
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
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
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
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
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
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
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
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
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
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
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
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
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
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
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
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
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
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
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
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
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
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
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
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
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
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
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
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
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
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
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
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
abstract class _$$_ClaimCreatedCopyWith<$Res> {
  factory _$$_ClaimCreatedCopyWith(
          _$_ClaimCreated value, $Res Function(_$_ClaimCreated) then) =
      __$$_ClaimCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({Item updatedItem});
}

/// @nodoc
class __$$_ClaimCreatedCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$_ClaimCreated>
    implements _$$_ClaimCreatedCopyWith<$Res> {
  __$$_ClaimCreatedCopyWithImpl(
      _$_ClaimCreated _value, $Res Function(_$_ClaimCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedItem = null,
  }) {
    return _then(_$_ClaimCreated(
      null == updatedItem
          ? _value.updatedItem
          : updatedItem // ignore: cast_nullable_to_non_nullable
              as Item,
    ));
  }
}

/// @nodoc

class _$_ClaimCreated implements _ClaimCreated {
  const _$_ClaimCreated(this.updatedItem);

  @override
  final Item updatedItem;

  @override
  String toString() {
    return 'ItemEvent.claimUpdated(updatedItem: $updatedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClaimCreated &&
            (identical(other.updatedItem, updatedItem) ||
                other.updatedItem == updatedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClaimCreatedCopyWith<_$_ClaimCreated> get copyWith =>
      __$$_ClaimCreatedCopyWithImpl<_$_ClaimCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
  }) {
    return claimUpdated(updatedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
  }) {
    return claimUpdated?.call(updatedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
    required TResult orElse(),
  }) {
    if (claimUpdated != null) {
      return claimUpdated(updatedItem);
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return claimUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return claimUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (claimUpdated != null) {
      return claimUpdated(this);
    }
    return orElse();
  }
}

abstract class _ClaimCreated implements ItemEvent {
  const factory _ClaimCreated(final Item updatedItem) = _$_ClaimCreated;

  Item get updatedItem;
  @JsonKey(ignore: true)
  _$$_ClaimCreatedCopyWith<_$_ClaimCreated> get copyWith =>
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
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
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
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
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
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
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
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
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
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
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
abstract class _$$_CreateChatRoomCopyWith<$Res> {
  factory _$$_CreateChatRoomCopyWith(
          _$_CreateChatRoom value, $Res Function(_$_CreateChatRoom) then) =
      __$$_CreateChatRoomCopyWithImpl<$Res>;
  @useResult
  $Res call({int otherId, String otherUsername});
}

/// @nodoc
class __$$_CreateChatRoomCopyWithImpl<$Res>
    extends _$ItemEventCopyWithImpl<$Res, _$_CreateChatRoom>
    implements _$$_CreateChatRoomCopyWith<$Res> {
  __$$_CreateChatRoomCopyWithImpl(
      _$_CreateChatRoom _value, $Res Function(_$_CreateChatRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otherId = null,
    Object? otherUsername = null,
  }) {
    return _then(_$_CreateChatRoom(
      null == otherId
          ? _value.otherId
          : otherId // ignore: cast_nullable_to_non_nullable
              as int,
      null == otherUsername
          ? _value.otherUsername
          : otherUsername // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateChatRoom implements _CreateChatRoom {
  const _$_CreateChatRoom(this.otherId, this.otherUsername);

  @override
  final int otherId;
  @override
  final String otherUsername;

  @override
  String toString() {
    return 'ItemEvent.createChatRoom(otherId: $otherId, otherUsername: $otherUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChatRoom &&
            (identical(other.otherId, otherId) || other.otherId == otherId) &&
            (identical(other.otherUsername, otherUsername) ||
                other.otherUsername == otherUsername));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otherId, otherUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      __$$_CreateChatRoomCopyWithImpl<_$_CreateChatRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) itemCreated,
    required TResult Function() itemRefreshed,
    required TResult Function() itemSolved,
    required TResult Function(int id) claimRead,
    required TResult Function(Item updatedItem) claimUpdated,
    required TResult Function() itemDeleted,
    required TResult Function(int otherId, String otherUsername) createChatRoom,
  }) {
    return createChatRoom(otherId, otherUsername);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int id)? itemCreated,
    TResult? Function()? itemRefreshed,
    TResult? Function()? itemSolved,
    TResult? Function(int id)? claimRead,
    TResult? Function(Item updatedItem)? claimUpdated,
    TResult? Function()? itemDeleted,
    TResult? Function(int otherId, String otherUsername)? createChatRoom,
  }) {
    return createChatRoom?.call(otherId, otherUsername);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? itemCreated,
    TResult Function()? itemRefreshed,
    TResult Function()? itemSolved,
    TResult Function(int id)? claimRead,
    TResult Function(Item updatedItem)? claimUpdated,
    TResult Function()? itemDeleted,
    TResult Function(int otherId, String otherUsername)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(otherId, otherUsername);
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
    required TResult Function(_ClaimCreated value) claimUpdated,
    required TResult Function(_ItemDeleted value) itemDeleted,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return createChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemCreated value)? itemCreated,
    TResult? Function(_ItemRefreshed value)? itemRefreshed,
    TResult? Function(_ItemSolved value)? itemSolved,
    TResult? Function(_ClaimRead value)? claimRead,
    TResult? Function(_ClaimCreated value)? claimUpdated,
    TResult? Function(_ItemDeleted value)? itemDeleted,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return createChatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemCreated value)? itemCreated,
    TResult Function(_ItemRefreshed value)? itemRefreshed,
    TResult Function(_ItemSolved value)? itemSolved,
    TResult Function(_ClaimRead value)? claimRead,
    TResult Function(_ClaimCreated value)? claimUpdated,
    TResult Function(_ItemDeleted value)? itemDeleted,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateChatRoom implements ItemEvent {
  const factory _CreateChatRoom(final int otherId, final String otherUsername) =
      _$_CreateChatRoom;

  int get otherId;
  String get otherUsername;
  @JsonKey(ignore: true)
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ItemState {
// Domain fields
  Item? get item => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError; // UI fields
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  Either<Failure, Success>? get solveFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get deleteFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Room>? get roomCreationFailureOrSuccess =>
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
      bool hasLoadingError,
      Either<Failure, Success>? solveFailureOrSuccess,
      Either<Failure, Success>? deleteFailureOrSuccess,
      Either<Failure, Room>? roomCreationFailureOrSuccess});
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
    Object? hasLoadingError = null,
    Object? solveFailureOrSuccess = freezed,
    Object? deleteFailureOrSuccess = freezed,
    Object? roomCreationFailureOrSuccess = freezed,
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
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      solveFailureOrSuccess: freezed == solveFailureOrSuccess
          ? _value.solveFailureOrSuccess
          : solveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      deleteFailureOrSuccess: freezed == deleteFailureOrSuccess
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      roomCreationFailureOrSuccess: freezed == roomCreationFailureOrSuccess
          ? _value.roomCreationFailureOrSuccess
          : roomCreationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Room>?,
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
      bool hasLoadingError,
      Either<Failure, Success>? solveFailureOrSuccess,
      Either<Failure, Success>? deleteFailureOrSuccess,
      Either<Failure, Room>? roomCreationFailureOrSuccess});
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
    Object? hasLoadingError = null,
    Object? solveFailureOrSuccess = freezed,
    Object? deleteFailureOrSuccess = freezed,
    Object? roomCreationFailureOrSuccess = freezed,
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
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      solveFailureOrSuccess: freezed == solveFailureOrSuccess
          ? _value.solveFailureOrSuccess
          : solveFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      deleteFailureOrSuccess: freezed == deleteFailureOrSuccess
          ? _value.deleteFailureOrSuccess
          : deleteFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      roomCreationFailureOrSuccess: freezed == roomCreationFailureOrSuccess
          ? _value.roomCreationFailureOrSuccess
          : roomCreationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Room>?,
    ));
  }
}

/// @nodoc

class _$_ItemState implements _ItemState {
  const _$_ItemState(
      {required this.item,
      required this.userId,
      this.token = "",
      this.isLoading = true,
      this.hasLoadingError = false,
      this.solveFailureOrSuccess,
      this.deleteFailureOrSuccess,
      this.roomCreationFailureOrSuccess});

// Domain fields
  @override
  final Item? item;
  @override
  final int userId;
// UI fields
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
  final Either<Failure, Success>? solveFailureOrSuccess;
  @override
  final Either<Failure, Success>? deleteFailureOrSuccess;
  @override
  final Either<Failure, Room>? roomCreationFailureOrSuccess;

  @override
  String toString() {
    return 'ItemState(item: $item, userId: $userId, token: $token, isLoading: $isLoading, hasLoadingError: $hasLoadingError, solveFailureOrSuccess: $solveFailureOrSuccess, deleteFailureOrSuccess: $deleteFailureOrSuccess, roomCreationFailureOrSuccess: $roomCreationFailureOrSuccess)';
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
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.solveFailureOrSuccess, solveFailureOrSuccess) ||
                other.solveFailureOrSuccess == solveFailureOrSuccess) &&
            (identical(other.deleteFailureOrSuccess, deleteFailureOrSuccess) ||
                other.deleteFailureOrSuccess == deleteFailureOrSuccess) &&
            (identical(other.roomCreationFailureOrSuccess,
                    roomCreationFailureOrSuccess) ||
                other.roomCreationFailureOrSuccess ==
                    roomCreationFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      item,
      userId,
      token,
      isLoading,
      hasLoadingError,
      solveFailureOrSuccess,
      deleteFailureOrSuccess,
      roomCreationFailureOrSuccess);

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
          final String token,
          final bool isLoading,
          final bool hasLoadingError,
          final Either<Failure, Success>? solveFailureOrSuccess,
          final Either<Failure, Success>? deleteFailureOrSuccess,
          final Either<Failure, Room>? roomCreationFailureOrSuccess}) =
      _$_ItemState;

  @override // Domain fields
  Item? get item;
  @override
  int get userId;
  @override // UI fields
  String get token;
  @override
  bool get isLoading;
  @override
  bool get hasLoadingError;
  @override
  Either<Failure, Success>? get solveFailureOrSuccess;
  @override
  Either<Failure, Success>? get deleteFailureOrSuccess;
  @override
  Either<Failure, Room>? get roomCreationFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_ItemStateCopyWith<_$_ItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
