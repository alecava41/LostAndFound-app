// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_global_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppGlobalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appCreated,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(ThemeMode theme) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(ThemeMode theme)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(ThemeMode theme)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppCreated value) appCreated,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ThemeChanged value) themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGlobalEventCopyWith<$Res> {
  factory $AppGlobalEventCopyWith(
          AppGlobalEvent value, $Res Function(AppGlobalEvent) then) =
      _$AppGlobalEventCopyWithImpl<$Res, AppGlobalEvent>;
}

/// @nodoc
class _$AppGlobalEventCopyWithImpl<$Res, $Val extends AppGlobalEvent>
    implements $AppGlobalEventCopyWith<$Res> {
  _$AppGlobalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AppCreatedCopyWith<$Res> {
  factory _$$_AppCreatedCopyWith(
          _$_AppCreated value, $Res Function(_$_AppCreated) then) =
      __$$_AppCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AppCreatedCopyWithImpl<$Res>
    extends _$AppGlobalEventCopyWithImpl<$Res, _$_AppCreated>
    implements _$$_AppCreatedCopyWith<$Res> {
  __$$_AppCreatedCopyWithImpl(
      _$_AppCreated _value, $Res Function(_$_AppCreated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AppCreated implements _AppCreated {
  const _$_AppCreated();

  @override
  String toString() {
    return 'AppGlobalEvent.appCreated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AppCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appCreated,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(ThemeMode theme) themeChanged,
  }) {
    return appCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(ThemeMode theme)? themeChanged,
  }) {
    return appCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(ThemeMode theme)? themeChanged,
    required TResult orElse(),
  }) {
    if (appCreated != null) {
      return appCreated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppCreated value) appCreated,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ThemeChanged value) themeChanged,
  }) {
    return appCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) {
    return appCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (appCreated != null) {
      return appCreated(this);
    }
    return orElse();
  }
}

abstract class _AppCreated implements AppGlobalEvent {
  const factory _AppCreated() = _$_AppCreated;
}

/// @nodoc
abstract class _$$_LocaleChangedCopyWith<$Res> {
  factory _$$_LocaleChangedCopyWith(
          _$_LocaleChanged value, $Res Function(_$_LocaleChanged) then) =
      __$$_LocaleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({Locale locale});
}

/// @nodoc
class __$$_LocaleChangedCopyWithImpl<$Res>
    extends _$AppGlobalEventCopyWithImpl<$Res, _$_LocaleChanged>
    implements _$$_LocaleChangedCopyWith<$Res> {
  __$$_LocaleChangedCopyWithImpl(
      _$_LocaleChanged _value, $Res Function(_$_LocaleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
  }) {
    return _then(_$_LocaleChanged(
      null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_LocaleChanged implements _LocaleChanged {
  const _$_LocaleChanged(this.locale);

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppGlobalEvent.localeChanged(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocaleChanged &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocaleChangedCopyWith<_$_LocaleChanged> get copyWith =>
      __$$_LocaleChangedCopyWithImpl<_$_LocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appCreated,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(ThemeMode theme) themeChanged,
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(ThemeMode theme)? themeChanged,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(ThemeMode theme)? themeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(locale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppCreated value) appCreated,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ThemeChanged value) themeChanged,
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (localeChanged != null) {
      return localeChanged(this);
    }
    return orElse();
  }
}

abstract class _LocaleChanged implements AppGlobalEvent {
  const factory _LocaleChanged(final Locale locale) = _$_LocaleChanged;

  Locale get locale;
  @JsonKey(ignore: true)
  _$$_LocaleChangedCopyWith<_$_LocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ThemeChangedCopyWith<$Res> {
  factory _$$_ThemeChangedCopyWith(
          _$_ThemeChanged value, $Res Function(_$_ThemeChanged) then) =
      __$$_ThemeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ThemeMode theme});
}

/// @nodoc
class __$$_ThemeChangedCopyWithImpl<$Res>
    extends _$AppGlobalEventCopyWithImpl<$Res, _$_ThemeChanged>
    implements _$$_ThemeChangedCopyWith<$Res> {
  __$$_ThemeChangedCopyWithImpl(
      _$_ThemeChanged _value, $Res Function(_$_ThemeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
  }) {
    return _then(_$_ThemeChanged(
      null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_ThemeChanged implements _ThemeChanged {
  const _$_ThemeChanged(this.theme);

  @override
  final ThemeMode theme;

  @override
  String toString() {
    return 'AppGlobalEvent.themeChanged(theme: $theme)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ThemeChanged &&
            (identical(other.theme, theme) || other.theme == theme));
  }

  @override
  int get hashCode => Object.hash(runtimeType, theme);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ThemeChangedCopyWith<_$_ThemeChanged> get copyWith =>
      __$$_ThemeChangedCopyWithImpl<_$_ThemeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() appCreated,
    required TResult Function(Locale locale) localeChanged,
    required TResult Function(ThemeMode theme) themeChanged,
  }) {
    return themeChanged(theme);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
    TResult? Function(ThemeMode theme)? themeChanged,
  }) {
    return themeChanged?.call(theme);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
    TResult Function(ThemeMode theme)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(theme);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppCreated value) appCreated,
    required TResult Function(_LocaleChanged value) localeChanged,
    required TResult Function(_ThemeChanged value) themeChanged,
  }) {
    return themeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
    TResult? Function(_ThemeChanged value)? themeChanged,
  }) {
    return themeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
    TResult Function(_ThemeChanged value)? themeChanged,
    required TResult orElse(),
  }) {
    if (themeChanged != null) {
      return themeChanged(this);
    }
    return orElse();
  }
}

abstract class _ThemeChanged implements AppGlobalEvent {
  const factory _ThemeChanged(final ThemeMode theme) = _$_ThemeChanged;

  ThemeMode get theme;
  @JsonKey(ignore: true)
  _$$_ThemeChangedCopyWith<_$_ThemeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppGlobalState {
  Locale get locale => throw _privateConstructorUsedError;
  LatLng get defaultPosition => throw _privateConstructorUsedError;
  ThemeMode get theme => throw _privateConstructorUsedError;
  Either<Failure, Success>? get response => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppGlobalStateCopyWith<AppGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGlobalStateCopyWith<$Res> {
  factory $AppGlobalStateCopyWith(
          AppGlobalState value, $Res Function(AppGlobalState) then) =
      _$AppGlobalStateCopyWithImpl<$Res, AppGlobalState>;
  @useResult
  $Res call(
      {Locale locale,
      LatLng defaultPosition,
      ThemeMode theme,
      Either<Failure, Success>? response});
}

/// @nodoc
class _$AppGlobalStateCopyWithImpl<$Res, $Val extends AppGlobalState>
    implements $AppGlobalStateCopyWith<$Res> {
  _$AppGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? defaultPosition = null,
    Object? theme = null,
    Object? response = freezed,
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      defaultPosition: null == defaultPosition
          ? _value.defaultPosition
          : defaultPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppGlobalStateCopyWith<$Res>
    implements $AppGlobalStateCopyWith<$Res> {
  factory _$$_AppGlobalStateCopyWith(
          _$_AppGlobalState value, $Res Function(_$_AppGlobalState) then) =
      __$$_AppGlobalStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Locale locale,
      LatLng defaultPosition,
      ThemeMode theme,
      Either<Failure, Success>? response});
}

/// @nodoc
class __$$_AppGlobalStateCopyWithImpl<$Res>
    extends _$AppGlobalStateCopyWithImpl<$Res, _$_AppGlobalState>
    implements _$$_AppGlobalStateCopyWith<$Res> {
  __$$_AppGlobalStateCopyWithImpl(
      _$_AppGlobalState _value, $Res Function(_$_AppGlobalState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? locale = null,
    Object? defaultPosition = null,
    Object? theme = null,
    Object? response = freezed,
  }) {
    return _then(_$_AppGlobalState(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      defaultPosition: null == defaultPosition
          ? _value.defaultPosition
          : defaultPosition // ignore: cast_nullable_to_non_nullable
              as LatLng,
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_AppGlobalState implements _AppGlobalState {
  const _$_AppGlobalState(
      {required this.locale,
      required this.defaultPosition,
      required this.theme,
      this.response});

  @override
  final Locale locale;
  @override
  final LatLng defaultPosition;
  @override
  final ThemeMode theme;
  @override
  final Either<Failure, Success>? response;

  @override
  String toString() {
    return 'AppGlobalState(locale: $locale, defaultPosition: $defaultPosition, theme: $theme, response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppGlobalState &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.defaultPosition, defaultPosition) ||
                other.defaultPosition == defaultPosition) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, locale, defaultPosition, theme, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppGlobalStateCopyWith<_$_AppGlobalState> get copyWith =>
      __$$_AppGlobalStateCopyWithImpl<_$_AppGlobalState>(this, _$identity);
}

abstract class _AppGlobalState implements AppGlobalState {
  const factory _AppGlobalState(
      {required final Locale locale,
      required final LatLng defaultPosition,
      required final ThemeMode theme,
      final Either<Failure, Success>? response}) = _$_AppGlobalState;

  @override
  Locale get locale;
  @override
  LatLng get defaultPosition;
  @override
  ThemeMode get theme;
  @override
  Either<Failure, Success>? get response;
  @override
  @JsonKey(ignore: true)
  _$$_AppGlobalStateCopyWith<_$_AppGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}
