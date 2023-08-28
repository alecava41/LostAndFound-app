// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BadgeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeEventCopyWith<$Res> {
  factory $BadgeEventCopyWith(
          BadgeEvent value, $Res Function(BadgeEvent) then) =
      _$BadgeEventCopyWithImpl<$Res, BadgeEvent>;
}

/// @nodoc
class _$BadgeEventCopyWithImpl<$Res, $Val extends BadgeEvent>
    implements $BadgeEventCopyWith<$Res> {
  _$BadgeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BadgeCreatedCopyWith<$Res> {
  factory _$$_BadgeCreatedCopyWith(
          _$_BadgeCreated value, $Res Function(_$_BadgeCreated) then) =
      __$$_BadgeCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BadgeCreatedCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_BadgeCreated>
    implements _$$_BadgeCreatedCopyWith<$Res> {
  __$$_BadgeCreatedCopyWithImpl(
      _$_BadgeCreated _value, $Res Function(_$_BadgeCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_BadgeCreated implements _BadgeCreated {
  const _$_BadgeCreated();

  @override
  String toString() {
    return 'BadgeEvent.badgeCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BadgeCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return badgeCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return badgeCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (badgeCreated != null) {
      return badgeCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return badgeCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return badgeCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (badgeCreated != null) {
      return badgeCreated(this);
    }
    return orElse();
  }
}

abstract class _BadgeCreated implements BadgeEvent {
  const factory _BadgeCreated() = _$_BadgeCreated;
}

/// @nodoc
abstract class _$$_NewsReadCopyWith<$Res> {
  factory _$$_NewsReadCopyWith(
          _$_NewsRead value, $Res Function(_$_NewsRead) then) =
      __$$_NewsReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsReadCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_NewsRead>
    implements _$$_NewsReadCopyWith<$Res> {
  __$$_NewsReadCopyWithImpl(
      _$_NewsRead _value, $Res Function(_$_NewsRead) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsRead implements _NewsRead {
  const _$_NewsRead();

  @override
  String toString() {
    return 'BadgeEvent.newsRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return newsRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return newsRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (newsRead != null) {
      return newsRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return newsRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return newsRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (newsRead != null) {
      return newsRead(this);
    }
    return orElse();
  }
}

abstract class _NewsRead implements BadgeEvent {
  const factory _NewsRead() = _$_NewsRead;
}

/// @nodoc
abstract class _$$_ReceivedClaimReadCopyWith<$Res> {
  factory _$$_ReceivedClaimReadCopyWith(_$_ReceivedClaimRead value,
          $Res Function(_$_ReceivedClaimRead) then) =
      __$$_ReceivedClaimReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ReceivedClaimReadCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_ReceivedClaimRead>
    implements _$$_ReceivedClaimReadCopyWith<$Res> {
  __$$_ReceivedClaimReadCopyWithImpl(
      _$_ReceivedClaimRead _value, $Res Function(_$_ReceivedClaimRead) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ReceivedClaimRead implements _ReceivedClaimRead {
  const _$_ReceivedClaimRead();

  @override
  String toString() {
    return 'BadgeEvent.receivedClaimRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ReceivedClaimRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return receivedClaimRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return receivedClaimRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (receivedClaimRead != null) {
      return receivedClaimRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return receivedClaimRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return receivedClaimRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (receivedClaimRead != null) {
      return receivedClaimRead(this);
    }
    return orElse();
  }
}

abstract class _ReceivedClaimRead implements BadgeEvent {
  const factory _ReceivedClaimRead() = _$_ReceivedClaimRead;
}

/// @nodoc
abstract class _$$_NewNewsCopyWith<$Res> {
  factory _$$_NewNewsCopyWith(
          _$_NewNews value, $Res Function(_$_NewNews) then) =
      __$$_NewNewsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewNewsCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_NewNews>
    implements _$$_NewNewsCopyWith<$Res> {
  __$$_NewNewsCopyWithImpl(_$_NewNews _value, $Res Function(_$_NewNews) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewNews implements _NewNews {
  const _$_NewNews();

  @override
  String toString() {
    return 'BadgeEvent.newNews()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewNews);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return newNews();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return newNews?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (newNews != null) {
      return newNews();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return newNews(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return newNews?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (newNews != null) {
      return newNews(this);
    }
    return orElse();
  }
}

abstract class _NewNews implements BadgeEvent {
  const factory _NewNews() = _$_NewNews;
}

/// @nodoc
abstract class _$$_NewReceivedClaimCopyWith<$Res> {
  factory _$$_NewReceivedClaimCopyWith(
          _$_NewReceivedClaim value, $Res Function(_$_NewReceivedClaim) then) =
      __$$_NewReceivedClaimCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewReceivedClaimCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_NewReceivedClaim>
    implements _$$_NewReceivedClaimCopyWith<$Res> {
  __$$_NewReceivedClaimCopyWithImpl(
      _$_NewReceivedClaim _value, $Res Function(_$_NewReceivedClaim) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewReceivedClaim implements _NewReceivedClaim {
  const _$_NewReceivedClaim();

  @override
  String toString() {
    return 'BadgeEvent.newReceivedClaim()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewReceivedClaim);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return newReceivedClaim();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return newReceivedClaim?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (newReceivedClaim != null) {
      return newReceivedClaim();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return newReceivedClaim(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return newReceivedClaim?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (newReceivedClaim != null) {
      return newReceivedClaim(this);
    }
    return orElse();
  }
}

abstract class _NewReceivedClaim implements BadgeEvent {
  const factory _NewReceivedClaim() = _$_NewReceivedClaim;
}

/// @nodoc
abstract class _$$_SentClaimUpdateCopyWith<$Res> {
  factory _$$_SentClaimUpdateCopyWith(
          _$_SentClaimUpdate value, $Res Function(_$_SentClaimUpdate) then) =
      __$$_SentClaimUpdateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SentClaimUpdateCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_SentClaimUpdate>
    implements _$$_SentClaimUpdateCopyWith<$Res> {
  __$$_SentClaimUpdateCopyWithImpl(
      _$_SentClaimUpdate _value, $Res Function(_$_SentClaimUpdate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SentClaimUpdate implements _SentClaimUpdate {
  const _$_SentClaimUpdate();

  @override
  String toString() {
    return 'BadgeEvent.sentClaimUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SentClaimUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return sentClaimUpdate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return sentClaimUpdate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (sentClaimUpdate != null) {
      return sentClaimUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return sentClaimUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return sentClaimUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (sentClaimUpdate != null) {
      return sentClaimUpdate(this);
    }
    return orElse();
  }
}

abstract class _SentClaimUpdate implements BadgeEvent {
  const factory _SentClaimUpdate() = _$_SentClaimUpdate;
}

/// @nodoc
abstract class _$$_SentClaimReadCopyWith<$Res> {
  factory _$$_SentClaimReadCopyWith(
          _$_SentClaimRead value, $Res Function(_$_SentClaimRead) then) =
      __$$_SentClaimReadCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SentClaimReadCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_SentClaimRead>
    implements _$$_SentClaimReadCopyWith<$Res> {
  __$$_SentClaimReadCopyWithImpl(
      _$_SentClaimRead _value, $Res Function(_$_SentClaimRead) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SentClaimRead implements _SentClaimRead {
  const _$_SentClaimRead();

  @override
  String toString() {
    return 'BadgeEvent.sentClaimRead()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SentClaimRead);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return sentClaimRead();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return sentClaimRead?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (sentClaimRead != null) {
      return sentClaimRead();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return sentClaimRead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return sentClaimRead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (sentClaimRead != null) {
      return sentClaimRead(this);
    }
    return orElse();
  }
}

abstract class _SentClaimRead implements BadgeEvent {
  const factory _SentClaimRead() = _$_SentClaimRead;
}

/// @nodoc
abstract class _$$_ChatUpdateCopyWith<$Res> {
  factory _$$_ChatUpdateCopyWith(
          _$_ChatUpdate value, $Res Function(_$_ChatUpdate) then) =
      __$$_ChatUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool hasUnreadChats});
}

/// @nodoc
class __$$_ChatUpdateCopyWithImpl<$Res>
    extends _$BadgeEventCopyWithImpl<$Res, _$_ChatUpdate>
    implements _$$_ChatUpdateCopyWith<$Res> {
  __$$_ChatUpdateCopyWithImpl(
      _$_ChatUpdate _value, $Res Function(_$_ChatUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hasUnreadChats = null,
  }) {
    return _then(_$_ChatUpdate(
      null == hasUnreadChats
          ? _value.hasUnreadChats
          : hasUnreadChats // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ChatUpdate implements _ChatUpdate {
  const _$_ChatUpdate(this.hasUnreadChats);

  @override
  final bool hasUnreadChats;

  @override
  String toString() {
    return 'BadgeEvent.chatUpdate(hasUnreadChats: $hasUnreadChats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUpdate &&
            (identical(other.hasUnreadChats, hasUnreadChats) ||
                other.hasUnreadChats == hasUnreadChats));
  }

  @override
  int get hashCode => Object.hash(runtimeType, hasUnreadChats);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatUpdateCopyWith<_$_ChatUpdate> get copyWith =>
      __$$_ChatUpdateCopyWithImpl<_$_ChatUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() badgeCreated,
    required TResult Function() newsRead,
    required TResult Function() receivedClaimRead,
    required TResult Function() newNews,
    required TResult Function() newReceivedClaim,
    required TResult Function() sentClaimUpdate,
    required TResult Function() sentClaimRead,
    required TResult Function(bool hasUnreadChats) chatUpdate,
  }) {
    return chatUpdate(hasUnreadChats);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? badgeCreated,
    TResult? Function()? newsRead,
    TResult? Function()? receivedClaimRead,
    TResult? Function()? newNews,
    TResult? Function()? newReceivedClaim,
    TResult? Function()? sentClaimUpdate,
    TResult? Function()? sentClaimRead,
    TResult? Function(bool hasUnreadChats)? chatUpdate,
  }) {
    return chatUpdate?.call(hasUnreadChats);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? badgeCreated,
    TResult Function()? newsRead,
    TResult Function()? receivedClaimRead,
    TResult Function()? newNews,
    TResult Function()? newReceivedClaim,
    TResult Function()? sentClaimUpdate,
    TResult Function()? sentClaimRead,
    TResult Function(bool hasUnreadChats)? chatUpdate,
    required TResult orElse(),
  }) {
    if (chatUpdate != null) {
      return chatUpdate(hasUnreadChats);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BadgeCreated value) badgeCreated,
    required TResult Function(_NewsRead value) newsRead,
    required TResult Function(_ReceivedClaimRead value) receivedClaimRead,
    required TResult Function(_NewNews value) newNews,
    required TResult Function(_NewReceivedClaim value) newReceivedClaim,
    required TResult Function(_SentClaimUpdate value) sentClaimUpdate,
    required TResult Function(_SentClaimRead value) sentClaimRead,
    required TResult Function(_ChatUpdate value) chatUpdate,
  }) {
    return chatUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BadgeCreated value)? badgeCreated,
    TResult? Function(_NewsRead value)? newsRead,
    TResult? Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult? Function(_NewNews value)? newNews,
    TResult? Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult? Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult? Function(_SentClaimRead value)? sentClaimRead,
    TResult? Function(_ChatUpdate value)? chatUpdate,
  }) {
    return chatUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BadgeCreated value)? badgeCreated,
    TResult Function(_NewsRead value)? newsRead,
    TResult Function(_ReceivedClaimRead value)? receivedClaimRead,
    TResult Function(_NewNews value)? newNews,
    TResult Function(_NewReceivedClaim value)? newReceivedClaim,
    TResult Function(_SentClaimUpdate value)? sentClaimUpdate,
    TResult Function(_SentClaimRead value)? sentClaimRead,
    TResult Function(_ChatUpdate value)? chatUpdate,
    required TResult orElse(),
  }) {
    if (chatUpdate != null) {
      return chatUpdate(this);
    }
    return orElse();
  }
}

abstract class _ChatUpdate implements BadgeEvent {
  const factory _ChatUpdate(final bool hasUnreadChats) = _$_ChatUpdate;

  bool get hasUnreadChats;
  @JsonKey(ignore: true)
  _$$_ChatUpdateCopyWith<_$_ChatUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BadgeState {
  int get unreadNews => throw _privateConstructorUsedError;
  int get unreadReceivedClaims => throw _privateConstructorUsedError;
  bool get hasUnreadChats => throw _privateConstructorUsedError;
  bool get hasUnreadSentClaims => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BadgeStateCopyWith<BadgeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadgeStateCopyWith<$Res> {
  factory $BadgeStateCopyWith(
          BadgeState value, $Res Function(BadgeState) then) =
      _$BadgeStateCopyWithImpl<$Res, BadgeState>;
  @useResult
  $Res call(
      {int unreadNews,
      int unreadReceivedClaims,
      bool hasUnreadChats,
      bool hasUnreadSentClaims});
}

/// @nodoc
class _$BadgeStateCopyWithImpl<$Res, $Val extends BadgeState>
    implements $BadgeStateCopyWith<$Res> {
  _$BadgeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadNews = null,
    Object? unreadReceivedClaims = null,
    Object? hasUnreadChats = null,
    Object? hasUnreadSentClaims = null,
  }) {
    return _then(_value.copyWith(
      unreadNews: null == unreadNews
          ? _value.unreadNews
          : unreadNews // ignore: cast_nullable_to_non_nullable
              as int,
      unreadReceivedClaims: null == unreadReceivedClaims
          ? _value.unreadReceivedClaims
          : unreadReceivedClaims // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnreadChats: null == hasUnreadChats
          ? _value.hasUnreadChats
          : hasUnreadChats // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUnreadSentClaims: null == hasUnreadSentClaims
          ? _value.hasUnreadSentClaims
          : hasUnreadSentClaims // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BadgeStateCopyWith<$Res>
    implements $BadgeStateCopyWith<$Res> {
  factory _$$_BadgeStateCopyWith(
          _$_BadgeState value, $Res Function(_$_BadgeState) then) =
      __$$_BadgeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int unreadNews,
      int unreadReceivedClaims,
      bool hasUnreadChats,
      bool hasUnreadSentClaims});
}

/// @nodoc
class __$$_BadgeStateCopyWithImpl<$Res>
    extends _$BadgeStateCopyWithImpl<$Res, _$_BadgeState>
    implements _$$_BadgeStateCopyWith<$Res> {
  __$$_BadgeStateCopyWithImpl(
      _$_BadgeState _value, $Res Function(_$_BadgeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unreadNews = null,
    Object? unreadReceivedClaims = null,
    Object? hasUnreadChats = null,
    Object? hasUnreadSentClaims = null,
  }) {
    return _then(_$_BadgeState(
      unreadNews: null == unreadNews
          ? _value.unreadNews
          : unreadNews // ignore: cast_nullable_to_non_nullable
              as int,
      unreadReceivedClaims: null == unreadReceivedClaims
          ? _value.unreadReceivedClaims
          : unreadReceivedClaims // ignore: cast_nullable_to_non_nullable
              as int,
      hasUnreadChats: null == hasUnreadChats
          ? _value.hasUnreadChats
          : hasUnreadChats // ignore: cast_nullable_to_non_nullable
              as bool,
      hasUnreadSentClaims: null == hasUnreadSentClaims
          ? _value.hasUnreadSentClaims
          : hasUnreadSentClaims // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_BadgeState implements _BadgeState {
  const _$_BadgeState(
      {required this.unreadNews,
      required this.unreadReceivedClaims,
      required this.hasUnreadChats,
      required this.hasUnreadSentClaims});

  @override
  final int unreadNews;
  @override
  final int unreadReceivedClaims;
  @override
  final bool hasUnreadChats;
  @override
  final bool hasUnreadSentClaims;

  @override
  String toString() {
    return 'BadgeState(unreadNews: $unreadNews, unreadReceivedClaims: $unreadReceivedClaims, hasUnreadChats: $hasUnreadChats, hasUnreadSentClaims: $hasUnreadSentClaims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BadgeState &&
            (identical(other.unreadNews, unreadNews) ||
                other.unreadNews == unreadNews) &&
            (identical(other.unreadReceivedClaims, unreadReceivedClaims) ||
                other.unreadReceivedClaims == unreadReceivedClaims) &&
            (identical(other.hasUnreadChats, hasUnreadChats) ||
                other.hasUnreadChats == hasUnreadChats) &&
            (identical(other.hasUnreadSentClaims, hasUnreadSentClaims) ||
                other.hasUnreadSentClaims == hasUnreadSentClaims));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unreadNews, unreadReceivedClaims,
      hasUnreadChats, hasUnreadSentClaims);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadgeStateCopyWith<_$_BadgeState> get copyWith =>
      __$$_BadgeStateCopyWithImpl<_$_BadgeState>(this, _$identity);
}

abstract class _BadgeState implements BadgeState {
  const factory _BadgeState(
      {required final int unreadNews,
      required final int unreadReceivedClaims,
      required final bool hasUnreadChats,
      required final bool hasUnreadSentClaims}) = _$_BadgeState;

  @override
  int get unreadNews;
  @override
  int get unreadReceivedClaims;
  @override
  bool get hasUnreadChats;
  @override
  bool get hasUnreadSentClaims;
  @override
  @JsonKey(ignore: true)
  _$$_BadgeStateCopyWith<_$_BadgeState> get copyWith =>
      throw _privateConstructorUsedError;
}
