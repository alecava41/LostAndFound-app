// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'answer_question_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AnswerQuestionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String answer) answerFieldChanged,
    required TResult Function() claimCreated,
    required TResult Function(int id, String username) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String answer)? answerFieldChanged,
    TResult? Function()? claimCreated,
    TResult? Function(int id, String username)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String answer)? answerFieldChanged,
    TResult Function()? claimCreated,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_AnswerFieldChanged value) answerFieldChanged,
    required TResult Function(_ClaimCreated value) claimCreated,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult? Function(_ClaimCreated value)? claimCreated,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult Function(_ClaimCreated value)? claimCreated,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerQuestionEventCopyWith<$Res> {
  factory $AnswerQuestionEventCopyWith(
          AnswerQuestionEvent value, $Res Function(AnswerQuestionEvent) then) =
      _$AnswerQuestionEventCopyWithImpl<$Res, AnswerQuestionEvent>;
}

/// @nodoc
class _$AnswerQuestionEventCopyWithImpl<$Res, $Val extends AnswerQuestionEvent>
    implements $AnswerQuestionEventCopyWith<$Res> {
  _$AnswerQuestionEventCopyWithImpl(this._value, this._then);

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
    extends _$AnswerQuestionEventCopyWithImpl<$Res, _$_ContentCreated>
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
    return 'AnswerQuestionEvent.contentCreated(itemId: $itemId)';
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
    required TResult Function(String answer) answerFieldChanged,
    required TResult Function() claimCreated,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return contentCreated(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String answer)? answerFieldChanged,
    TResult? Function()? claimCreated,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return contentCreated?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String answer)? answerFieldChanged,
    TResult Function()? claimCreated,
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
    required TResult Function(_AnswerFieldChanged value) answerFieldChanged,
    required TResult Function(_ClaimCreated value) claimCreated,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return contentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult? Function(_ClaimCreated value)? claimCreated,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return contentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult Function(_ClaimCreated value)? claimCreated,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (contentCreated != null) {
      return contentCreated(this);
    }
    return orElse();
  }
}

abstract class _ContentCreated implements AnswerQuestionEvent {
  const factory _ContentCreated(final int itemId) = _$_ContentCreated;

  int get itemId;
  @JsonKey(ignore: true)
  _$$_ContentCreatedCopyWith<_$_ContentCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AnswerFieldChangedCopyWith<$Res> {
  factory _$$_AnswerFieldChangedCopyWith(_$_AnswerFieldChanged value,
          $Res Function(_$_AnswerFieldChanged) then) =
      __$$_AnswerFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String answer});
}

/// @nodoc
class __$$_AnswerFieldChangedCopyWithImpl<$Res>
    extends _$AnswerQuestionEventCopyWithImpl<$Res, _$_AnswerFieldChanged>
    implements _$$_AnswerFieldChangedCopyWith<$Res> {
  __$$_AnswerFieldChangedCopyWithImpl(
      _$_AnswerFieldChanged _value, $Res Function(_$_AnswerFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$_AnswerFieldChanged(
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AnswerFieldChanged implements _AnswerFieldChanged {
  const _$_AnswerFieldChanged(this.answer);

  @override
  final String answer;

  @override
  String toString() {
    return 'AnswerQuestionEvent.answerFieldChanged(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerFieldChanged &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerFieldChangedCopyWith<_$_AnswerFieldChanged> get copyWith =>
      __$$_AnswerFieldChangedCopyWithImpl<_$_AnswerFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String answer) answerFieldChanged,
    required TResult Function() claimCreated,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return answerFieldChanged(answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String answer)? answerFieldChanged,
    TResult? Function()? claimCreated,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return answerFieldChanged?.call(answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String answer)? answerFieldChanged,
    TResult Function()? claimCreated,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) {
    if (answerFieldChanged != null) {
      return answerFieldChanged(answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_AnswerFieldChanged value) answerFieldChanged,
    required TResult Function(_ClaimCreated value) claimCreated,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return answerFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult? Function(_ClaimCreated value)? claimCreated,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return answerFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult Function(_ClaimCreated value)? claimCreated,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (answerFieldChanged != null) {
      return answerFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _AnswerFieldChanged implements AnswerQuestionEvent {
  const factory _AnswerFieldChanged(final String answer) =
      _$_AnswerFieldChanged;

  String get answer;
  @JsonKey(ignore: true)
  _$$_AnswerFieldChangedCopyWith<_$_AnswerFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClaimCreatedCopyWith<$Res> {
  factory _$$_ClaimCreatedCopyWith(
          _$_ClaimCreated value, $Res Function(_$_ClaimCreated) then) =
      __$$_ClaimCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ClaimCreatedCopyWithImpl<$Res>
    extends _$AnswerQuestionEventCopyWithImpl<$Res, _$_ClaimCreated>
    implements _$$_ClaimCreatedCopyWith<$Res> {
  __$$_ClaimCreatedCopyWithImpl(
      _$_ClaimCreated _value, $Res Function(_$_ClaimCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ClaimCreated implements _ClaimCreated {
  const _$_ClaimCreated();

  @override
  String toString() {
    return 'AnswerQuestionEvent.claimCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ClaimCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String answer) answerFieldChanged,
    required TResult Function() claimCreated,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return claimCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String answer)? answerFieldChanged,
    TResult? Function()? claimCreated,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return claimCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String answer)? answerFieldChanged,
    TResult Function()? claimCreated,
    TResult Function(int id, String username)? createChatRoom,
    required TResult orElse(),
  }) {
    if (claimCreated != null) {
      return claimCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_AnswerFieldChanged value) answerFieldChanged,
    required TResult Function(_ClaimCreated value) claimCreated,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return claimCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult? Function(_ClaimCreated value)? claimCreated,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return claimCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult Function(_ClaimCreated value)? claimCreated,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (claimCreated != null) {
      return claimCreated(this);
    }
    return orElse();
  }
}

abstract class _ClaimCreated implements AnswerQuestionEvent {
  const factory _ClaimCreated() = _$_ClaimCreated;
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
    extends _$AnswerQuestionEventCopyWithImpl<$Res, _$_CreateChatRoom>
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
    return 'AnswerQuestionEvent.createChatRoom(id: $id, username: $username)';
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
    required TResult Function(String answer) answerFieldChanged,
    required TResult Function() claimCreated,
    required TResult Function(int id, String username) createChatRoom,
  }) {
    return createChatRoom(id, username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String answer)? answerFieldChanged,
    TResult? Function()? claimCreated,
    TResult? Function(int id, String username)? createChatRoom,
  }) {
    return createChatRoom?.call(id, username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String answer)? answerFieldChanged,
    TResult Function()? claimCreated,
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
    required TResult Function(_AnswerFieldChanged value) answerFieldChanged,
    required TResult Function(_ClaimCreated value) claimCreated,
    required TResult Function(_CreateChatRoom value) createChatRoom,
  }) {
    return createChatRoom(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult? Function(_ClaimCreated value)? claimCreated,
    TResult? Function(_CreateChatRoom value)? createChatRoom,
  }) {
    return createChatRoom?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_AnswerFieldChanged value)? answerFieldChanged,
    TResult Function(_ClaimCreated value)? claimCreated,
    TResult Function(_CreateChatRoom value)? createChatRoom,
    required TResult orElse(),
  }) {
    if (createChatRoom != null) {
      return createChatRoom(this);
    }
    return orElse();
  }
}

abstract class _CreateChatRoom implements AnswerQuestionEvent {
  const factory _CreateChatRoom(final int id, final String username) =
      _$_CreateChatRoom;

  int get id;
  String get username;
  @JsonKey(ignore: true)
  _$$_CreateChatRoomCopyWith<_$_CreateChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AnswerQuestionState {
// Domain params
  AnswerField get answer => throw _privateConstructorUsedError;
  Item? get item => throw _privateConstructorUsedError; // UI params
  String get token => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasLoadingError => throw _privateConstructorUsedError;
  bool get showErrorMessage => throw _privateConstructorUsedError;
  Either<Failure, Item>? get claimFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Room>? get roomCreationFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AnswerQuestionStateCopyWith<AnswerQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerQuestionStateCopyWith<$Res> {
  factory $AnswerQuestionStateCopyWith(
          AnswerQuestionState value, $Res Function(AnswerQuestionState) then) =
      _$AnswerQuestionStateCopyWithImpl<$Res, AnswerQuestionState>;
  @useResult
  $Res call(
      {AnswerField answer,
      Item? item,
      String token,
      bool isLoading,
      bool hasLoadingError,
      bool showErrorMessage,
      Either<Failure, Item>? claimFailureOrSuccess,
      Either<Failure, Room>? roomCreationFailureOrSuccess});
}

/// @nodoc
class _$AnswerQuestionStateCopyWithImpl<$Res, $Val extends AnswerQuestionState>
    implements $AnswerQuestionStateCopyWith<$Res> {
  _$AnswerQuestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? item = freezed,
    Object? token = null,
    Object? isLoading = null,
    Object? hasLoadingError = null,
    Object? showErrorMessage = null,
    Object? claimFailureOrSuccess = freezed,
    Object? roomCreationFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerField,
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
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_AnswerQuestionStateCopyWith<$Res>
    implements $AnswerQuestionStateCopyWith<$Res> {
  factory _$$_AnswerQuestionStateCopyWith(_$_AnswerQuestionState value,
          $Res Function(_$_AnswerQuestionState) then) =
      __$$_AnswerQuestionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AnswerField answer,
      Item? item,
      String token,
      bool isLoading,
      bool hasLoadingError,
      bool showErrorMessage,
      Either<Failure, Item>? claimFailureOrSuccess,
      Either<Failure, Room>? roomCreationFailureOrSuccess});
}

/// @nodoc
class __$$_AnswerQuestionStateCopyWithImpl<$Res>
    extends _$AnswerQuestionStateCopyWithImpl<$Res, _$_AnswerQuestionState>
    implements _$$_AnswerQuestionStateCopyWith<$Res> {
  __$$_AnswerQuestionStateCopyWithImpl(_$_AnswerQuestionState _value,
      $Res Function(_$_AnswerQuestionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
    Object? item = freezed,
    Object? token = null,
    Object? isLoading = null,
    Object? hasLoadingError = null,
    Object? showErrorMessage = null,
    Object? claimFailureOrSuccess = freezed,
    Object? roomCreationFailureOrSuccess = freezed,
  }) {
    return _then(_$_AnswerQuestionState(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as AnswerField,
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
      showErrorMessage: null == showErrorMessage
          ? _value.showErrorMessage
          : showErrorMessage // ignore: cast_nullable_to_non_nullable
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

class _$_AnswerQuestionState implements _AnswerQuestionState {
  const _$_AnswerQuestionState(
      {required this.answer,
      required this.item,
      this.token = "",
      this.isLoading = true,
      this.hasLoadingError = false,
      this.showErrorMessage = false,
      this.claimFailureOrSuccess,
      this.roomCreationFailureOrSuccess});

// Domain params
  @override
  final AnswerField answer;
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
  @JsonKey()
  final bool showErrorMessage;
  @override
  final Either<Failure, Item>? claimFailureOrSuccess;
  @override
  final Either<Failure, Room>? roomCreationFailureOrSuccess;

  @override
  String toString() {
    return 'AnswerQuestionState(answer: $answer, item: $item, token: $token, isLoading: $isLoading, hasLoadingError: $hasLoadingError, showErrorMessage: $showErrorMessage, claimFailureOrSuccess: $claimFailureOrSuccess, roomCreationFailureOrSuccess: $roomCreationFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnswerQuestionState &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasLoadingError, hasLoadingError) ||
                other.hasLoadingError == hasLoadingError) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                other.showErrorMessage == showErrorMessage) &&
            (identical(other.claimFailureOrSuccess, claimFailureOrSuccess) ||
                other.claimFailureOrSuccess == claimFailureOrSuccess) &&
            (identical(other.roomCreationFailureOrSuccess,
                    roomCreationFailureOrSuccess) ||
                other.roomCreationFailureOrSuccess ==
                    roomCreationFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      answer,
      item,
      token,
      isLoading,
      hasLoadingError,
      showErrorMessage,
      claimFailureOrSuccess,
      roomCreationFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AnswerQuestionStateCopyWith<_$_AnswerQuestionState> get copyWith =>
      __$$_AnswerQuestionStateCopyWithImpl<_$_AnswerQuestionState>(
          this, _$identity);
}

abstract class _AnswerQuestionState implements AnswerQuestionState {
  const factory _AnswerQuestionState(
          {required final AnswerField answer,
          required final Item? item,
          final String token,
          final bool isLoading,
          final bool hasLoadingError,
          final bool showErrorMessage,
          final Either<Failure, Item>? claimFailureOrSuccess,
          final Either<Failure, Room>? roomCreationFailureOrSuccess}) =
      _$_AnswerQuestionState;

  @override // Domain params
  AnswerField get answer;
  @override
  Item? get item;
  @override // UI params
  String get token;
  @override
  bool get isLoading;
  @override
  bool get hasLoadingError;
  @override
  bool get showErrorMessage;
  @override
  Either<Failure, Item>? get claimFailureOrSuccess;
  @override
  Either<Failure, Room>? get roomCreationFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AnswerQuestionStateCopyWith<_$_AnswerQuestionState> get copyWith =>
      throw _privateConstructorUsedError;
}
