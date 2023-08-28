// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, int itemId) chatContentCreated,
    required TResult Function(PartialText message) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, int itemId)? chatContentCreated,
    TResult? Function(PartialText message)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, int itemId)? chatContentCreated,
    TResult Function(PartialText message)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatContentCreated value) chatContentCreated,
    required TResult Function(_MessageSent value) messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatContentCreated value)? chatContentCreated,
    TResult? Function(_MessageSent value)? messageSent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatContentCreated value)? chatContentCreated,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res, ChatEvent>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res, $Val extends ChatEvent>
    implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChatContentCreatedCopyWith<$Res> {
  factory _$$_ChatContentCreatedCopyWith(_$_ChatContentCreated value,
          $Res Function(_$_ChatContentCreated) then) =
      __$$_ChatContentCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String roomId, int itemId});
}

/// @nodoc
class __$$_ChatContentCreatedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_ChatContentCreated>
    implements _$$_ChatContentCreatedCopyWith<$Res> {
  __$$_ChatContentCreatedCopyWithImpl(
      _$_ChatContentCreated _value, $Res Function(_$_ChatContentCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roomId = null,
    Object? itemId = null,
  }) {
    return _then(_$_ChatContentCreated(
      null == roomId
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ChatContentCreated implements _ChatContentCreated {
  const _$_ChatContentCreated(this.roomId, this.itemId);

  @override
  final String roomId;
  @override
  final int itemId;

  @override
  String toString() {
    return 'ChatEvent.chatContentCreated(roomId: $roomId, itemId: $itemId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatContentCreated &&
            (identical(other.roomId, roomId) || other.roomId == roomId) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatContentCreatedCopyWith<_$_ChatContentCreated> get copyWith =>
      __$$_ChatContentCreatedCopyWithImpl<_$_ChatContentCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, int itemId) chatContentCreated,
    required TResult Function(PartialText message) messageSent,
  }) {
    return chatContentCreated(roomId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, int itemId)? chatContentCreated,
    TResult? Function(PartialText message)? messageSent,
  }) {
    return chatContentCreated?.call(roomId, itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, int itemId)? chatContentCreated,
    TResult Function(PartialText message)? messageSent,
    required TResult orElse(),
  }) {
    if (chatContentCreated != null) {
      return chatContentCreated(roomId, itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatContentCreated value) chatContentCreated,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return chatContentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatContentCreated value)? chatContentCreated,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return chatContentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatContentCreated value)? chatContentCreated,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (chatContentCreated != null) {
      return chatContentCreated(this);
    }
    return orElse();
  }
}

abstract class _ChatContentCreated implements ChatEvent {
  const factory _ChatContentCreated(final String roomId, final int itemId) =
      _$_ChatContentCreated;

  String get roomId;
  int get itemId;
  @JsonKey(ignore: true)
  _$$_ChatContentCreatedCopyWith<_$_ChatContentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageSentCopyWith<$Res> {
  factory _$$_MessageSentCopyWith(
          _$_MessageSent value, $Res Function(_$_MessageSent) then) =
      __$$_MessageSentCopyWithImpl<$Res>;
  @useResult
  $Res call({PartialText message});
}

/// @nodoc
class __$$_MessageSentCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res, _$_MessageSent>
    implements _$$_MessageSentCopyWith<$Res> {
  __$$_MessageSentCopyWithImpl(
      _$_MessageSent _value, $Res Function(_$_MessageSent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageSent(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as PartialText,
    ));
  }
}

/// @nodoc

class _$_MessageSent implements _MessageSent {
  const _$_MessageSent(this.message);

  @override
  final PartialText message;

  @override
  String toString() {
    return 'ChatEvent.messageSent(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageSent &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageSentCopyWith<_$_MessageSent> get copyWith =>
      __$$_MessageSentCopyWithImpl<_$_MessageSent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String roomId, int itemId) chatContentCreated,
    required TResult Function(PartialText message) messageSent,
  }) {
    return messageSent(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String roomId, int itemId)? chatContentCreated,
    TResult? Function(PartialText message)? messageSent,
  }) {
    return messageSent?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String roomId, int itemId)? chatContentCreated,
    TResult Function(PartialText message)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChatContentCreated value) chatContentCreated,
    required TResult Function(_MessageSent value) messageSent,
  }) {
    return messageSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChatContentCreated value)? chatContentCreated,
    TResult? Function(_MessageSent value)? messageSent,
  }) {
    return messageSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChatContentCreated value)? chatContentCreated,
    TResult Function(_MessageSent value)? messageSent,
    required TResult orElse(),
  }) {
    if (messageSent != null) {
      return messageSent(this);
    }
    return orElse();
  }
}

abstract class _MessageSent implements ChatEvent {
  const factory _MessageSent(final PartialText message) = _$_MessageSent;

  PartialText get message;
  @JsonKey(ignore: true)
  _$$_MessageSentCopyWith<_$_MessageSent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChatState {
// Chat params
  Stream<List<Message>> get messages => throw _privateConstructorUsedError;
  Room? get room => throw _privateConstructorUsedError;
  Item? get item => throw _privateConstructorUsedError;
  String? get currentUsername =>
      throw _privateConstructorUsedError; // UI params
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res, ChatState>;
  @useResult
  $Res call(
      {Stream<List<Message>> messages,
      Room? room,
      Item? item,
      String? currentUsername,
      bool hasLoadingError,
      bool isLoading,
      String token});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res, $Val extends ChatState>
    implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? room = freezed,
    Object? item = freezed,
    Object? currentUsername = freezed,
    Object? hasLoadingError = null,
    Object? isLoading = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Stream<List<Message>>,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
      currentUsername: freezed == currentUsername
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Stream<List<Message>> messages,
      Room? room,
      Item? item,
      String? currentUsername,
      bool hasLoadingError,
      bool isLoading,
      String token});
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res, _$_ChatState>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? room = freezed,
    Object? item = freezed,
    Object? currentUsername = freezed,
    Object? hasLoadingError = null,
    Object? isLoading = null,
    Object? token = null,
  }) {
    return _then(_$_ChatState(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as Stream<List<Message>>,
      room: freezed == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as Room?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item?,
      currentUsername: freezed == currentUsername
          ? _value.currentUsername
          : currentUsername // ignore: cast_nullable_to_non_nullable
              as String?,
      hasLoadingError: null == hasLoadingError
          ? _value.hasLoadingError
          : hasLoadingError // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.messages,
      required this.room,
      required this.item,
      required this.currentUsername,
      this.hasLoadingError = false,
      this.isLoading = false,
      this.token = ""});

// Chat params
  @override
  final Stream<List<Message>> messages;
  @override
  final Room? room;
  @override
  final Item? item;
  @override
  final String? currentUsername;
// UI params
  @override
  @JsonKey()
  final bool hasLoadingError;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String token;

  @override
  String toString() {
    return 'ChatState(messages: $messages, room: $room, item: $item, currentUsername: $currentUsername, hasLoadingError: $hasLoadingError, isLoading: $isLoading, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.currentUsername, currentUsername) ||
                other.currentUsername == currentUsername) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messages, room, item,
      currentUsername, hasLoadingError, isLoading, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required final Stream<List<Message>> messages,
      required final Room? room,
      required final Item? item,
      required final String? currentUsername,
      final bool hasLoadingError,
      final bool isLoading,
      final String token}) = _$_ChatState;

  @override // Chat params
  Stream<List<Message>> get messages;
  @override
  Room? get room;
  @override
  Item? get item;
  @override
  String? get currentUsername;
  @override // UI params
  bool get hasLoadingError;
  @override
  bool get isLoading;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
