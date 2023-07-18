// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newsCreated,
    required TResult Function() newsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newsCreated,
    TResult? Function()? newsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newsCreated,
    TResult Function()? newsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsCreated value) newsCreated,
    required TResult Function(_NewsRefreshed value) newsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsCreated value)? newsCreated,
    TResult? Function(_NewsRefreshed value)? newsRefreshed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsCreated value)? newsCreated,
    TResult Function(_NewsRefreshed value)? newsRefreshed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NewsCreatedCopyWith<$Res> {
  factory _$$_NewsCreatedCopyWith(
          _$_NewsCreated value, $Res Function(_$_NewsCreated) then) =
      __$$_NewsCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsCreatedCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_NewsCreated>
    implements _$$_NewsCreatedCopyWith<$Res> {
  __$$_NewsCreatedCopyWithImpl(
      _$_NewsCreated _value, $Res Function(_$_NewsCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsCreated implements _NewsCreated {
  const _$_NewsCreated();

  @override
  String toString() {
    return 'NewsEvent.newsCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newsCreated,
    required TResult Function() newsRefreshed,
  }) {
    return newsCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newsCreated,
    TResult? Function()? newsRefreshed,
  }) {
    return newsCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newsCreated,
    TResult Function()? newsRefreshed,
    required TResult orElse(),
  }) {
    if (newsCreated != null) {
      return newsCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsCreated value) newsCreated,
    required TResult Function(_NewsRefreshed value) newsRefreshed,
  }) {
    return newsCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsCreated value)? newsCreated,
    TResult? Function(_NewsRefreshed value)? newsRefreshed,
  }) {
    return newsCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsCreated value)? newsCreated,
    TResult Function(_NewsRefreshed value)? newsRefreshed,
    required TResult orElse(),
  }) {
    if (newsCreated != null) {
      return newsCreated(this);
    }
    return orElse();
  }
}

abstract class _NewsCreated implements NewsEvent {
  const factory _NewsCreated() = _$_NewsCreated;
}

/// @nodoc
abstract class _$$_NewsRefreshedCopyWith<$Res> {
  factory _$$_NewsRefreshedCopyWith(
          _$_NewsRefreshed value, $Res Function(_$_NewsRefreshed) then) =
      __$$_NewsRefreshedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewsRefreshedCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$_NewsRefreshed>
    implements _$$_NewsRefreshedCopyWith<$Res> {
  __$$_NewsRefreshedCopyWithImpl(
      _$_NewsRefreshed _value, $Res Function(_$_NewsRefreshed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewsRefreshed implements _NewsRefreshed {
  const _$_NewsRefreshed();

  @override
  String toString() {
    return 'NewsEvent.newsRefreshed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewsRefreshed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() newsCreated,
    required TResult Function() newsRefreshed,
  }) {
    return newsRefreshed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? newsCreated,
    TResult? Function()? newsRefreshed,
  }) {
    return newsRefreshed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? newsCreated,
    TResult Function()? newsRefreshed,
    required TResult orElse(),
  }) {
    if (newsRefreshed != null) {
      return newsRefreshed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewsCreated value) newsCreated,
    required TResult Function(_NewsRefreshed value) newsRefreshed,
  }) {
    return newsRefreshed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewsCreated value)? newsCreated,
    TResult? Function(_NewsRefreshed value)? newsRefreshed,
  }) {
    return newsRefreshed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewsCreated value)? newsCreated,
    TResult Function(_NewsRefreshed value)? newsRefreshed,
    required TResult orElse(),
  }) {
    if (newsRefreshed != null) {
      return newsRefreshed(this);
    }
    return orElse();
  }
}

abstract class _NewsRefreshed implements NewsEvent {
  const factory _NewsRefreshed() = _$_NewsRefreshed;
}

/// @nodoc
mixin _$NewsState {
  List<News> get news => throw _privateConstructorUsedError;
  Either<NewsFailure, Success>? get loadFailureOrSuccess =>
      throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {List<News> news,
      Either<NewsFailure, Success>? loadFailureOrSuccess,
      String token});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? loadFailureOrSuccess = freezed,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      news: null == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<NewsFailure, Success>?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsStateCopyWith<$Res> implements $NewsStateCopyWith<$Res> {
  factory _$$_NewsStateCopyWith(
          _$_NewsState value, $Res Function(_$_NewsState) then) =
      __$$_NewsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<News> news,
      Either<NewsFailure, Success>? loadFailureOrSuccess,
      String token});
}

/// @nodoc
class __$$_NewsStateCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$_NewsState>
    implements _$$_NewsStateCopyWith<$Res> {
  __$$_NewsStateCopyWithImpl(
      _$_NewsState _value, $Res Function(_$_NewsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
    Object? loadFailureOrSuccess = freezed,
    Object? token = null,
  }) {
    return _then(_$_NewsState(
      news: null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<NewsFailure, Success>?,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NewsState implements _NewsState {
  const _$_NewsState(
      {required final List<News> news,
      this.loadFailureOrSuccess,
      required this.token})
      : _news = news;

  final List<News> _news;
  @override
  List<News> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  final Either<NewsFailure, Success>? loadFailureOrSuccess;
  @override
  final String token;

  @override
  String toString() {
    return 'NewsState(news: $news, loadFailureOrSuccess: $loadFailureOrSuccess, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsState &&
            const DeepCollectionEquality().equals(other._news, _news) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_news), loadFailureOrSuccess, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      __$$_NewsStateCopyWithImpl<_$_NewsState>(this, _$identity);
}

abstract class _NewsState implements NewsState {
  const factory _NewsState(
      {required final List<News> news,
      final Either<NewsFailure, Success>? loadFailureOrSuccess,
      required final String token}) = _$_NewsState;

  @override
  List<News> get news;
  @override
  Either<NewsFailure, Success>? get loadFailureOrSuccess;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$_NewsStateCopyWith<_$_NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}
