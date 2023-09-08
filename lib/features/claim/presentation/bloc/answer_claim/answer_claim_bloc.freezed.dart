// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_claim_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerClaimEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(ClaimStatus status, int claimId)
        claimDecisionTaken,
    required TResult Function(int id, String username) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult? Function(int id, String username)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_ClaimCreated value) claimDecisionTaken,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_ClaimCreated value)? claimDecisionTaken,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_ClaimCreated value)? claimDecisionTaken,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerClaimEventCopyWith<$Res> {
  factory $AnswerClaimEventCopyWith(
          AnswerClaimEvent value, $Res Function(AnswerClaimEvent) then) =
      _$AnswerClaimEventCopyWithImpl<$Res, AnswerClaimEvent>;
}

/// @nodoc
class _$AnswerClaimEventCopyWithImpl<$Res, $Val extends AnswerClaimEvent>
    implements $AnswerClaimEventCopyWith<$Res> {
  _$AnswerClaimEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContentCreatedCopyWith<$Res> {
  factory _$$_ContentCreatedCopyWith(
          _$_ContentCreated value, $Res Function(_$_ContentCreated) then) =
      __$$_ContentCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemId});
}

/// @nodoc
class __$$_ContentCreatedCopyWithImpl<$Res>
    extends _$AnswerClaimEventCopyWithImpl<$Res, _$_ContentCreated>
    implements _$$_ContentCreatedCopyWith<$Res> {
  __$$_ContentCreatedCopyWithImpl(
      _$_ContentCreated _value, $Res Function(_$_ContentCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$_ContentCreated(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ContentCreated implements _ContentCreated {
  const _$_ContentCreated(this.itemId);

  @override
  final int itemId;

  @override
  String toString() {
    return 'AnswerClaimEvent.contentCreated(itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContentCreated &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContentCreatedCopyWith<_$_ContentCreated> get copyWith =>
      __$$_ContentCreatedCopyWithImpl<_$_ContentCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(ClaimStatus status, int claimId)
        claimDecisionTaken,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return contentCreated(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return contentCreated?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) {
    if (contentCreated != null) {
      return contentCreated(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_ClaimCreated value) claimDecisionTaken,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return contentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_ClaimCreated value)? claimDecisionTaken,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return contentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_ClaimCreated value)? claimDecisionTaken,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (contentCreated != null) {
      return contentCreated(this);
    }
    return orElse();
  }
}

abstract class _ContentCreated implements AnswerClaimEvent {
  const factory _ContentCreated(final int itemId) = _$_ContentCreated;

  int get itemId;
  @JsonKey(ignore: true)
  _$$_ContentCreatedCopyWith<_$_ContentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClaimCreatedCopyWith<$Res> {
  factory _$$_ClaimCreatedCopyWith(
          _$_ClaimCreated value, $Res Function(_$_ClaimCreated) then) =
      __$$_ClaimCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({ClaimStatus status, int claimId});
}

/// @nodoc
class __$$_ClaimCreatedCopyWithImpl<$Res>
    extends _$AnswerClaimEventCopyWithImpl<$Res, _$_ClaimCreated>
    implements _$$_ClaimCreatedCopyWith<$Res> {
  __$$_ClaimCreatedCopyWithImpl(
      _$_ClaimCreated _value, $Res Function(_$_ClaimCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? claimId = null,
  }) {
    return _then(_$_ClaimCreated(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ClaimStatus,
      null == claimId
          ? _value.claimId
          : claimId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ClaimCreated implements _ClaimCreated {
  const _$_ClaimCreated(this.status, this.claimId);

  @override
  final ClaimStatus status;
  @override
  final int claimId;

  @override
  String toString() {
    return 'AnswerClaimEvent.claimDecisionTaken(status: $status, claimId: $claimId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClaimCreated &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.claimId, claimId) || other.claimId == claimId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, claimId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClaimCreatedCopyWith<_$_ClaimCreated> get copyWith =>
      __$$_ClaimCreatedCopyWithImpl<_$_ClaimCreated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(ClaimStatus status, int claimId)
        claimDecisionTaken,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return claimDecisionTaken(status, claimId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return claimDecisionTaken?.call(status, claimId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) {
    if (claimDecisionTaken != null) {
      return claimDecisionTaken(status, claimId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_ClaimCreated value) claimDecisionTaken,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return claimDecisionTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_ClaimCreated value)? claimDecisionTaken,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return claimDecisionTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_ClaimCreated value)? claimDecisionTaken,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (claimDecisionTaken != null) {
      return claimDecisionTaken(this);
    }
    return orElse();
  }
}

abstract class _ClaimCreated implements AnswerClaimEvent {
  const factory _ClaimCreated(final ClaimStatus status, final int claimId) =
      _$_ClaimCreated;

  ClaimStatus get status;
  int get claimId;
  @JsonKey(ignore: true)
  _$$_ClaimCreatedCopyWith<_$_ClaimCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateChatRoomCopyWith<$Res> {
  factory _$$_CreateChatRoomCopyWith(
          _$_CreateChatRoom value, $Res Function(_$_CreateChatRoom) then) =
      __$$_CreateChatRoomCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String username});
}

/// @nodoc
class __$$_CreateChatRoomCopyWithImpl<$Res>
    extends _$AnswerClaimEventCopyWithImpl<$Res, _$_CreateChatRoom>
    implements _$$_CreateChatRoomCopyWith<$Res> {
  __$$_CreateChatRoomCopyWithImpl(
      _$_CreateChatRoom _value, $Res Function(_$_CreateChatRoom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
  }) {
    return _then(_$_CreateChatRoom(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateChatRoom implements _CreateChatRoom {
  const _$_CreateChatRoom(this.id, this.username);

  @override
  final int id;
  @override
  final String username;

  @override
  String toString() {
    return 'AnswerClaimEvent.createChatRoom(id: $id, username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateChatRoom &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      __$$_CreateChatRoomCopyWithImpl<_$_CreateChatRoom>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(ClaimStatus status, int claimId)
        claimDecisionTaken,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return createChatRoom(id, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return createChatRoom?.call(id, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(ClaimStatus status, int claimId)? claimDecisionTaken,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(id, username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_ClaimCreated value) claimDecisionTaken,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return createChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_ClaimCreated value)? claimDecisionTaken,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return createChatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_ClaimCreated value)? claimDecisionTaken,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateChatRoom implements AnswerClaimEvent {
  const factory _CreateChatRoom(final int id, final String username) =
      _$_CreateChatRoom;

  int get id;
  String get username;
  @JsonKey(ignore: true)
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnswerClaimState {
  Item? get item => throw _privateConstructorUsedError; // UI params
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  Either<Failure, Item>? get claimFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Room>? get roomCreationFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerClaimStateCopyWith<AnswerClaimState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerClaimStateCopyWith<$Res> {
  factory $AnswerClaimStateCopyWith(
          AnswerClaimState value, $Res Function(AnswerClaimState) then) =
      _$AnswerClaimStateCopyWithImpl<$Res, AnswerClaimState>;
  @useResult
  $Res call(
      {Item? item,
      String token,
      bool isLoading,
      bool hasLoadingError,
      Either<Failure, Item>? claimFailureOrSuccess,
      Either<Failure, Room>? roomCreationFailureOrSuccess});
}

/// @nodoc
class _$AnswerClaimStateCopyWithImpl<$Res, $Val extends AnswerClaimState>
    implements $AnswerClaimStateCopyWith<$Res> {
  _$AnswerClaimStateCopyWithImpl(this._value, this._then);

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
    Object? hasLoadingError = null,
    Object? claimFailureOrSuccess = freezed,
    Object? roomCreationFailureOrSuccess = freezed,
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
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      claimFailureOrSuccess: freezed == claimFailureOrSuccess
          ? _value.claimFailureOrSuccess
          : claimFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Item>?,
      roomCreationFailureOrSuccess: freezed == roomCreationFailureOrSuccess
          ? _value.roomCreationFailureOrSuccess
          : roomCreationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Room>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AnswerClaimStateCopyWith<$Res>
    implements $AnswerClaimStateCopyWith<$Res> {
  factory _$$_AnswerClaimStateCopyWith(
          _$_AnswerClaimState value, $Res Function(_$_AnswerClaimState) then) =
      __$$_AnswerClaimStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Item? item,
      String token,
      bool isLoading,
      bool hasLoadingError,
      Either<Failure, Item>? claimFailureOrSuccess,
      Either<Failure, Room>? roomCreationFailureOrSuccess});
}

/// @nodoc
class __$$_AnswerClaimStateCopyWithImpl<$Res>
    extends _$AnswerClaimStateCopyWithImpl<$Res, _$_AnswerClaimState>
    implements _$$_AnswerClaimStateCopyWith<$Res> {
  __$$_AnswerClaimStateCopyWithImpl(
      _$_AnswerClaimState _value, $Res Function(_$_AnswerClaimState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? token = null,
    Object? isLoading = null,
    Object? hasLoadingError = null,
    Object? claimFailureOrSuccess = freezed,
    Object? roomCreationFailureOrSuccess = freezed,
  }) {
    return _then(_$_AnswerClaimState(
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
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      claimFailureOrSuccess: freezed == claimFailureOrSuccess
          ? _value.claimFailureOrSuccess
          : claimFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Item>?,
      roomCreationFailureOrSuccess: freezed == roomCreationFailureOrSuccess
          ? _value.roomCreationFailureOrSuccess
          : roomCreationFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Room>?,
    ));
  }
}

/// @nodoc

class _$_AnswerClaimState implements _AnswerClaimState {
  const _$_AnswerClaimState(
      {required this.item,
      this.token = "",
      this.isLoading = true,
      this.hasLoadingError = false,
      this.claimFailureOrSuccess,
      this.roomCreationFailureOrSuccess});

  @override
  final Item? item;
// UI params
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
  final Either<Failure, Item>? claimFailureOrSuccess;
  @override
  final Either<Failure, Room>? roomCreationFailureOrSuccess;

  @override
  String toString() {
    return 'AnswerClaimState(item: $item, token: $token, isLoading: $isLoading, hasLoadingError: $hasLoadingError, claimFailureOrSuccess: $claimFailureOrSuccess, roomCreationFailureOrSuccess: $roomCreationFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerClaimState &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.claimFailureOrSuccess, claimFailureOrSuccess) ||
                other.claimFailureOrSuccess == claimFailureOrSuccess) &&
            (identical(other.roomCreationFailureOrSuccess,
                    roomCreationFailureOrSuccess) ||
                other.roomCreationFailureOrSuccess ==
                    roomCreationFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, item, token, isLoading,
      hasLoadingError, claimFailureOrSuccess, roomCreationFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerClaimStateCopyWith<_$_AnswerClaimState> get copyWith =>
      __$$_AnswerClaimStateCopyWithImpl<_$_AnswerClaimState>(this, _$identity);
}

abstract class _AnswerClaimState implements AnswerClaimState {
  const factory _AnswerClaimState(
          {required final Item? item,
          final String token,
          final bool isLoading,
          final bool hasLoadingError,
          final Either<Failure, Item>? claimFailureOrSuccess,
          final Either<Failure, Room>? roomCreationFailureOrSuccess}) =
      _$_AnswerClaimState;

  @override
  Item? get item;
  @override // UI params
  String get token;
  @override
  bool get isLoading;
  @override
  bool get hasLoadingError;
  @override
  Either<Failure, Item>? get claimFailureOrSuccess;
  @override
  Either<Failure, Room>? get roomCreationFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerClaimStateCopyWith<_$_AnswerClaimState> get copyWith =>
      throw _privateConstructorUsedError;
}
