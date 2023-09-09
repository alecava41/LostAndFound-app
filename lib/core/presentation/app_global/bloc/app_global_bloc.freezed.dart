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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AppCreated value) appCreated,
    required TResult Function(_LocaleChanged value) localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
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
  }) {
    return appCreated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
  }) {
    return appCreated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
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
  }) {
    return appCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
  }) {
    return appCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
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
  }) {
    return localeChanged(locale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? appCreated,
    TResult? Function(Locale locale)? localeChanged,
  }) {
    return localeChanged?.call(locale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? appCreated,
    TResult Function(Locale locale)? localeChanged,
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
  }) {
    return localeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AppCreated value)? appCreated,
    TResult? Function(_LocaleChanged value)? localeChanged,
  }) {
    return localeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AppCreated value)? appCreated,
    TResult Function(_LocaleChanged value)? localeChanged,
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
mixin _$AppGlobalState {
  Locale get locale => throw _privateConstructorUsedError;

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
  $Res call({Locale locale});
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
  }) {
    return _then(_value.copyWith(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
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
  $Res call({Locale locale});
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
  }) {
    return _then(_$_AppGlobalState(
      locale: null == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$_AppGlobalState implements _AppGlobalState {
  const _$_AppGlobalState({required this.locale});

  @override
  final Locale locale;

  @override
  String toString() {
    return 'AppGlobalState(locale: $locale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppGlobalState &&
            (identical(other.locale, locale) || other.locale == locale));
  }

  @override
  int get hashCode => Object.hash(runtimeType, locale);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppGlobalStateCopyWith<_$_AppGlobalState> get copyWith =>
      __$$_AppGlobalStateCopyWithImpl<_$_AppGlobalState>(this, _$identity);
}

abstract class _AppGlobalState implements AppGlobalState {
  const factory _AppGlobalState({required final Locale locale}) =
      _$_AppGlobalState;

  @override
  Locale get locale;
  @override
  @JsonKey(ignore: true)
  _$$_AppGlobalStateCopyWith<_$_AppGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}
