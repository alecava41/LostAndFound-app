// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contentCreated,
    required TResult Function() logout,
    required TResult Function(String? image) imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contentCreated,
    TResult? Function()? logout,
    TResult? Function(String? image)? imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contentCreated,
    TResult Function()? logout,
    TResult Function(String? image)? imageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ImageSelected value) imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ImageSelected value)? imageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_Logout value)? logout,
    TResult Function(_ImageSelected value)? imageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

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
}

/// @nodoc
class __$$_ContentCreatedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ContentCreated>
    implements _$$_ContentCreatedCopyWith<$Res> {
  __$$_ContentCreatedCopyWithImpl(
      _$_ContentCreated _value, $Res Function(_$_ContentCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ContentCreated implements _ContentCreated {
  const _$_ContentCreated();

  @override
  String toString() {
    return 'UserEvent.contentCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContentCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contentCreated,
    required TResult Function() logout,
    required TResult Function(String? image) imageChanged,
  }) {
    return contentCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contentCreated,
    TResult? Function()? logout,
    TResult? Function(String? image)? imageChanged,
  }) {
    return contentCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contentCreated,
    TResult Function()? logout,
    TResult Function(String? image)? imageChanged,
    required TResult orElse(),
  }) {
    if (contentCreated != null) {
      return contentCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ImageSelected value) imageChanged,
  }) {
    return contentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ImageSelected value)? imageChanged,
  }) {
    return contentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_Logout value)? logout,
    TResult Function(_ImageSelected value)? imageChanged,
    required TResult orElse(),
  }) {
    if (contentCreated != null) {
      return contentCreated(this);
    }
    return orElse();
  }
}

abstract class _ContentCreated implements UserEvent {
  const factory _ContentCreated() = _$_ContentCreated;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'UserEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contentCreated,
    required TResult Function() logout,
    required TResult Function(String? image) imageChanged,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contentCreated,
    TResult? Function()? logout,
    TResult? Function(String? image)? imageChanged,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contentCreated,
    TResult Function()? logout,
    TResult Function(String? image)? imageChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ImageSelected value) imageChanged,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ImageSelected value)? imageChanged,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_Logout value)? logout,
    TResult Function(_ImageSelected value)? imageChanged,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements UserEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_ImageSelectedCopyWith<$Res> {
  factory _$$_ImageSelectedCopyWith(
          _$_ImageSelected value, $Res Function(_$_ImageSelected) then) =
      __$$_ImageSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({String? image});
}

/// @nodoc
class __$$_ImageSelectedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$_ImageSelected>
    implements _$$_ImageSelectedCopyWith<$Res> {
  __$$_ImageSelectedCopyWithImpl(
      _$_ImageSelected _value, $Res Function(_$_ImageSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(_$_ImageSelected(
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ImageSelected implements _ImageSelected {
  const _$_ImageSelected(this.image);

  @override
  final String? image;

  @override
  String toString() {
    return 'UserEvent.imageChanged(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSelected &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageSelectedCopyWith<_$_ImageSelected> get copyWith =>
      __$$_ImageSelectedCopyWithImpl<_$_ImageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() contentCreated,
    required TResult Function() logout,
    required TResult Function(String? image) imageChanged,
  }) {
    return imageChanged(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? contentCreated,
    TResult? Function()? logout,
    TResult? Function(String? image)? imageChanged,
  }) {
    return imageChanged?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? contentCreated,
    TResult Function()? logout,
    TResult Function(String? image)? imageChanged,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_Logout value) logout,
    required TResult Function(_ImageSelected value) imageChanged,
  }) {
    return imageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_ImageSelected value)? imageChanged,
  }) {
    return imageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_Logout value)? logout,
    TResult Function(_ImageSelected value)? imageChanged,
    required TResult orElse(),
  }) {
    if (imageChanged != null) {
      return imageChanged(this);
    }
    return orElse();
  }
}

abstract class _ImageSelected implements UserEvent {
  const factory _ImageSelected(final String? image) = _$_ImageSelected;

  String? get image;
  @JsonKey(ignore: true)
  _$$_ImageSelectedCopyWith<_$_ImageSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  User? get user => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  Either<Failure, Success>? get loadFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get logoutFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get imageUploadFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {User? user,
      String? imagePath,
      dynamic isLoading,
      String token,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? logoutFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? imagePath = freezed,
    Object? isLoading = freezed,
    Object? token = null,
    Object? loadFailureOrSuccess = freezed,
    Object? logoutFailureOrSuccess = freezed,
    Object? imageUploadFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      logoutFailureOrSuccess: freezed == logoutFailureOrSuccess
          ? _value.logoutFailureOrSuccess
          : logoutFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      imageUploadFailureOrSuccess: freezed == imageUploadFailureOrSuccess
          ? _value.imageUploadFailureOrSuccess
          : imageUploadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user,
      String? imagePath,
      dynamic isLoading,
      String token,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? logoutFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess});
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? imagePath = freezed,
    Object? isLoading = freezed,
    Object? token = null,
    Object? loadFailureOrSuccess = freezed,
    Object? logoutFailureOrSuccess = freezed,
    Object? imageUploadFailureOrSuccess = freezed,
  }) {
    return _then(_$_UserState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      logoutFailureOrSuccess: freezed == logoutFailureOrSuccess
          ? _value.logoutFailureOrSuccess
          : logoutFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      imageUploadFailureOrSuccess: freezed == imageUploadFailureOrSuccess
          ? _value.imageUploadFailureOrSuccess
          : imageUploadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_UserState implements _UserState {
  const _$_UserState(
      {required this.user,
      required this.imagePath,
      this.isLoading = false,
      this.token = "",
      this.loadFailureOrSuccess,
      this.logoutFailureOrSuccess,
      this.imageUploadFailureOrSuccess});

  @override
  final User? user;
  @override
  final String? imagePath;
  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  @JsonKey()
  final String token;
  @override
  final Either<Failure, Success>? loadFailureOrSuccess;
  @override
  final Either<Failure, Success>? logoutFailureOrSuccess;
  @override
  final Either<Failure, Success>? imageUploadFailureOrSuccess;

  @override
  String toString() {
    return 'UserState(user: $user, imagePath: $imagePath, isLoading: $isLoading, token: $token, loadFailureOrSuccess: $loadFailureOrSuccess, logoutFailureOrSuccess: $logoutFailureOrSuccess, imageUploadFailureOrSuccess: $imageUploadFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess) &&
            (identical(other.logoutFailureOrSuccess, logoutFailureOrSuccess) ||
                other.logoutFailureOrSuccess == logoutFailureOrSuccess) &&
            (identical(other.imageUploadFailureOrSuccess,
                    imageUploadFailureOrSuccess) ||
                other.imageUploadFailureOrSuccess ==
                    imageUploadFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      user,
      imagePath,
      const DeepCollectionEquality().hash(isLoading),
      token,
      loadFailureOrSuccess,
      logoutFailureOrSuccess,
      imageUploadFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
          {required final User? user,
          required final String? imagePath,
          final dynamic isLoading,
          final String token,
          final Either<Failure, Success>? loadFailureOrSuccess,
          final Either<Failure, Success>? logoutFailureOrSuccess,
          final Either<Failure, Success>? imageUploadFailureOrSuccess}) =
      _$_UserState;

  @override
  User? get user;
  @override
  String? get imagePath;
  @override
  dynamic get isLoading;
  @override
  String get token;
  @override
  Either<Failure, Success>? get loadFailureOrSuccess;
  @override
  Either<Failure, Success>? get logoutFailureOrSuccess;
  @override
  Either<Failure, Success>? get imageUploadFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}