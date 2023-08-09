// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ResetFiltersCopyWith<$Res> {
  factory _$$_ResetFiltersCopyWith(
          _$_ResetFilters value, $Res Function(_$_ResetFilters) then) =
      __$$_ResetFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetFiltersCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_ResetFilters>
    implements _$$_ResetFiltersCopyWith<$Res> {
  __$$_ResetFiltersCopyWithImpl(
      _$_ResetFilters _value, $Res Function(_$_ResetFilters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetFilters implements _ResetFilters {
  const _$_ResetFilters();

  @override
  String toString() {
    return 'SearchEvent.resetFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return resetFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return resetFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return resetFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return resetFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (resetFilters != null) {
      return resetFilters(this);
    }
    return orElse();
  }
}

abstract class _ResetFilters implements SearchEvent {
  const factory _ResetFilters() = _$_ResetFilters;
}

/// @nodoc
abstract class _$$_FoundCheckTriggeredCopyWith<$Res> {
  factory _$$_FoundCheckTriggeredCopyWith(_$_FoundCheckTriggered value,
          $Res Function(_$_FoundCheckTriggered) then) =
      __$$_FoundCheckTriggeredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FoundCheckTriggeredCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_FoundCheckTriggered>
    implements _$$_FoundCheckTriggeredCopyWith<$Res> {
  __$$_FoundCheckTriggeredCopyWithImpl(_$_FoundCheckTriggered _value,
      $Res Function(_$_FoundCheckTriggered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FoundCheckTriggered implements _FoundCheckTriggered {
  const _$_FoundCheckTriggered();

  @override
  String toString() {
    return 'SearchEvent.foundCheckTriggered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FoundCheckTriggered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return foundCheckTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return foundCheckTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (foundCheckTriggered != null) {
      return foundCheckTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return foundCheckTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return foundCheckTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (foundCheckTriggered != null) {
      return foundCheckTriggered(this);
    }
    return orElse();
  }
}

abstract class _FoundCheckTriggered implements SearchEvent {
  const factory _FoundCheckTriggered() = _$_FoundCheckTriggered;
}

/// @nodoc
abstract class _$$_LostCheckTriggeredCopyWith<$Res> {
  factory _$$_LostCheckTriggeredCopyWith(_$_LostCheckTriggered value,
          $Res Function(_$_LostCheckTriggered) then) =
      __$$_LostCheckTriggeredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LostCheckTriggeredCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_LostCheckTriggered>
    implements _$$_LostCheckTriggeredCopyWith<$Res> {
  __$$_LostCheckTriggeredCopyWithImpl(
      _$_LostCheckTriggered _value, $Res Function(_$_LostCheckTriggered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LostCheckTriggered implements _LostCheckTriggered {
  const _$_LostCheckTriggered();

  @override
  String toString() {
    return 'SearchEvent.lostCheckTriggered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LostCheckTriggered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return lostCheckTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return lostCheckTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (lostCheckTriggered != null) {
      return lostCheckTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return lostCheckTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return lostCheckTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (lostCheckTriggered != null) {
      return lostCheckTriggered(this);
    }
    return orElse();
  }
}

abstract class _LostCheckTriggered implements SearchEvent {
  const factory _LostCheckTriggered() = _$_LostCheckTriggered;
}

/// @nodoc
abstract class _$$_PositionSelectedCopyWith<$Res> {
  factory _$$_PositionSelectedCopyWith(
          _$_PositionSelected value, $Res Function(_$_PositionSelected) then) =
      __$$_PositionSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng pos});
}

/// @nodoc
class __$$_PositionSelectedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_PositionSelected>
    implements _$$_PositionSelectedCopyWith<$Res> {
  __$$_PositionSelectedCopyWithImpl(
      _$_PositionSelected _value, $Res Function(_$_PositionSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
  }) {
    return _then(_$_PositionSelected(
      null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_PositionSelected implements _PositionSelected {
  const _$_PositionSelected(this.pos);

  @override
  final LatLng pos;

  @override
  String toString() {
    return 'SearchEvent.positionSelected(pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PositionSelected &&
            (identical(other.pos, pos) || other.pos == pos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PositionSelectedCopyWith<_$_PositionSelected> get copyWith =>
      __$$_PositionSelectedCopyWithImpl<_$_PositionSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return positionSelected(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return positionSelected?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (positionSelected != null) {
      return positionSelected(pos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return positionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return positionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (positionSelected != null) {
      return positionSelected(this);
    }
    return orElse();
  }
}

abstract class _PositionSelected implements SearchEvent {
  const factory _PositionSelected(final LatLng pos) = _$_PositionSelected;

  LatLng get pos;
  @JsonKey(ignore: true)
  _$$_PositionSelectedCopyWith<_$_PositionSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategorySelectedCopyWith<$Res> {
  factory _$$_CategorySelectedCopyWith(
          _$_CategorySelected value, $Res Function(_$_CategorySelected) then) =
      __$$_CategorySelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String category});
}

/// @nodoc
class __$$_CategorySelectedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_CategorySelected>
    implements _$$_CategorySelectedCopyWith<$Res> {
  __$$_CategorySelectedCopyWithImpl(
      _$_CategorySelected _value, $Res Function(_$_CategorySelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? category = null,
  }) {
    return _then(_$_CategorySelected(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategorySelected implements _CategorySelected {
  const _$_CategorySelected(this.id, this.category);

  @override
  final int id;
  @override
  final String category;

  @override
  String toString() {
    return 'SearchEvent.categorySelected(id: $id, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategorySelected &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      __$$_CategorySelectedCopyWithImpl<_$_CategorySelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return categorySelected(id, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return categorySelected?.call(id, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(id, category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements SearchEvent {
  const factory _CategorySelected(final int id, final String category) =
      _$_CategorySelected;

  int get id;
  String get category;
  @JsonKey(ignore: true)
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateSelectedCopyWith<$Res> {
  factory _$$_DateSelectedCopyWith(
          _$_DateSelected value, $Res Function(_$_DateSelected) then) =
      __$$_DateSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_DateSelectedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_DateSelected>
    implements _$$_DateSelectedCopyWith<$Res> {
  __$$_DateSelectedCopyWithImpl(
      _$_DateSelected _value, $Res Function(_$_DateSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_DateSelected(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateSelected implements _DateSelected {
  const _$_DateSelected(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'SearchEvent.dateSelected(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateSelected &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateSelectedCopyWith<_$_DateSelected> get copyWith =>
      __$$_DateSelectedCopyWithImpl<_$_DateSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return dateSelected(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return dateSelected?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return dateSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return dateSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (dateSelected != null) {
      return dateSelected(this);
    }
    return orElse();
  }
}

abstract class _DateSelected implements SearchEvent {
  const factory _DateSelected(final DateTime date) = _$_DateSelected;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_DateSelectedCopyWith<_$_DateSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchSubmittedCopyWith<$Res> {
  factory _$$_SearchSubmittedCopyWith(
          _$_SearchSubmitted value, $Res Function(_$_SearchSubmitted) then) =
      __$$_SearchSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchSubmittedCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_SearchSubmitted>
    implements _$$_SearchSubmittedCopyWith<$Res> {
  __$$_SearchSubmittedCopyWithImpl(
      _$_SearchSubmitted _value, $Res Function(_$_SearchSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchSubmitted implements _SearchSubmitted {
  const _$_SearchSubmitted();

  @override
  String toString() {
    return 'SearchEvent.searchSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return searchSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return searchSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return searchSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return searchSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (searchSubmitted != null) {
      return searchSubmitted(this);
    }
    return orElse();
  }
}

abstract class _SearchSubmitted implements SearchEvent {
  const factory _SearchSubmitted() = _$_SearchSubmitted;
}

/// @nodoc
abstract class _$$_ShowFiltersCopyWith<$Res> {
  factory _$$_ShowFiltersCopyWith(
          _$_ShowFilters value, $Res Function(_$_ShowFilters) then) =
      __$$_ShowFiltersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ShowFiltersCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$_ShowFilters>
    implements _$$_ShowFiltersCopyWith<$Res> {
  __$$_ShowFiltersCopyWithImpl(
      _$_ShowFilters _value, $Res Function(_$_ShowFilters) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ShowFilters implements _ShowFilters {
  const _$_ShowFilters();

  @override
  String toString() {
    return 'SearchEvent.showFilters()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ShowFilters);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resetFilters,
    required TResult Function() foundCheckTriggered,
    required TResult Function() lostCheckTriggered,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(DateTime date) dateSelected,
    required TResult Function() searchSubmitted,
    required TResult Function() showFilters,
  }) {
    return showFilters();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? resetFilters,
    TResult? Function()? foundCheckTriggered,
    TResult? Function()? lostCheckTriggered,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(DateTime date)? dateSelected,
    TResult? Function()? searchSubmitted,
    TResult? Function()? showFilters,
  }) {
    return showFilters?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resetFilters,
    TResult Function()? foundCheckTriggered,
    TResult Function()? lostCheckTriggered,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(DateTime date)? dateSelected,
    TResult Function()? searchSubmitted,
    TResult Function()? showFilters,
    required TResult orElse(),
  }) {
    if (showFilters != null) {
      return showFilters();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResetFilters value) resetFilters,
    required TResult Function(_FoundCheckTriggered value) foundCheckTriggered,
    required TResult Function(_LostCheckTriggered value) lostCheckTriggered,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_DateSelected value) dateSelected,
    required TResult Function(_SearchSubmitted value) searchSubmitted,
    required TResult Function(_ShowFilters value) showFilters,
  }) {
    return showFilters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResetFilters value)? resetFilters,
    TResult? Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult? Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_DateSelected value)? dateSelected,
    TResult? Function(_SearchSubmitted value)? searchSubmitted,
    TResult? Function(_ShowFilters value)? showFilters,
  }) {
    return showFilters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResetFilters value)? resetFilters,
    TResult Function(_FoundCheckTriggered value)? foundCheckTriggered,
    TResult Function(_LostCheckTriggered value)? lostCheckTriggered,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_DateSelected value)? dateSelected,
    TResult Function(_SearchSubmitted value)? searchSubmitted,
    TResult Function(_ShowFilters value)? showFilters,
    required TResult orElse(),
  }) {
    if (showFilters != null) {
      return showFilters(this);
    }
    return orElse();
  }
}

abstract class _ShowFilters implements SearchEvent {
  const factory _ShowFilters() = _$_ShowFilters;
}

/// @nodoc
mixin _$SearchState {
// Search parameters
  bool get foundChecked => throw _privateConstructorUsedError;
  bool get lostChecked => throw _privateConstructorUsedError;
  List<SearchItem> get results => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  LatLng get pos => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  DateTime? get dateTime => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get hasLocationPermissions => throw _privateConstructorUsedError;
  bool get isLoadingPosition => throw _privateConstructorUsedError;
  String get token =>
      throw _privateConstructorUsedError; // Fields to handle real search
  SearchPageState get pageState => throw _privateConstructorUsedError;
  Either<Failure, Success>? get searchFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool foundChecked,
      bool lostChecked,
      List<SearchItem> results,
      String address,
      LatLng pos,
      String category,
      int categoryId,
      DateTime? dateTime,
      bool isConnected,
      bool hasLocationPermissions,
      bool isLoadingPosition,
      String token,
      SearchPageState pageState,
      Either<Failure, Success>? searchFailureOrSuccess});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundChecked = null,
    Object? lostChecked = null,
    Object? results = null,
    Object? address = null,
    Object? pos = null,
    Object? category = null,
    Object? categoryId = null,
    Object? dateTime = freezed,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? isLoadingPosition = null,
    Object? token = null,
    Object? pageState = null,
    Object? searchFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      foundChecked: null == foundChecked
          ? _value.foundChecked
          : foundChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lostChecked: null == lostChecked
          ? _value.lostChecked
          : lostChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermissions: null == hasLocationPermissions
          ? _value.hasLocationPermissions
          : hasLocationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPosition: null == isLoadingPosition
          ? _value.isLoadingPosition
          : isLoadingPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as SearchPageState,
      searchFailureOrSuccess: freezed == searchFailureOrSuccess
          ? _value.searchFailureOrSuccess
          : searchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool foundChecked,
      bool lostChecked,
      List<SearchItem> results,
      String address,
      LatLng pos,
      String category,
      int categoryId,
      DateTime? dateTime,
      bool isConnected,
      bool hasLocationPermissions,
      bool isLoadingPosition,
      String token,
      SearchPageState pageState,
      Either<Failure, Success>? searchFailureOrSuccess});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foundChecked = null,
    Object? lostChecked = null,
    Object? results = null,
    Object? address = null,
    Object? pos = null,
    Object? category = null,
    Object? categoryId = null,
    Object? dateTime = freezed,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? isLoadingPosition = null,
    Object? token = null,
    Object? pageState = null,
    Object? searchFailureOrSuccess = freezed,
  }) {
    return _then(_$_SearchState(
      foundChecked: null == foundChecked
          ? _value.foundChecked
          : foundChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      lostChecked: null == lostChecked
          ? _value.lostChecked
          : lostChecked // ignore: cast_nullable_to_non_nullable
              as bool,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<SearchItem>,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      dateTime: freezed == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermissions: null == hasLocationPermissions
          ? _value.hasLocationPermissions
          : hasLocationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingPosition: null == isLoadingPosition
          ? _value.isLoadingPosition
          : isLoadingPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as SearchPageState,
      searchFailureOrSuccess: freezed == searchFailureOrSuccess
          ? _value.searchFailureOrSuccess
          : searchFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.foundChecked,
      required this.lostChecked,
      required final List<SearchItem> results,
      this.address = "",
      required this.pos,
      this.category = "",
      required this.categoryId,
      required this.dateTime,
      this.isConnected = false,
      this.hasLocationPermissions = false,
      this.isLoadingPosition = false,
      this.token = "",
      this.pageState = SearchPageState.filterPage,
      this.searchFailureOrSuccess})
      : _results = results;

// Search parameters
  @override
  final bool foundChecked;
  @override
  final bool lostChecked;
  final List<SearchItem> _results;
  @override
  List<SearchItem> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey()
  final String address;
  @override
  final LatLng pos;
  @override
  @JsonKey()
  final String category;
  @override
  final int categoryId;
  @override
  final DateTime? dateTime;
  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final bool hasLocationPermissions;
  @override
  @JsonKey()
  final bool isLoadingPosition;
  @override
  @JsonKey()
  final String token;
// Fields to handle real search
  @override
  @JsonKey()
  final SearchPageState pageState;
  @override
  final Either<Failure, Success>? searchFailureOrSuccess;

  @override
  String toString() {
    return 'SearchState(foundChecked: $foundChecked, lostChecked: $lostChecked, results: $results, address: $address, pos: $pos, category: $category, categoryId: $categoryId, dateTime: $dateTime, isConnected: $isConnected, hasLocationPermissions: $hasLocationPermissions, isLoadingPosition: $isLoadingPosition, token: $token, pageState: $pageState, searchFailureOrSuccess: $searchFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.foundChecked, foundChecked) ||
                other.foundChecked == foundChecked) &&
            (identical(other.lostChecked, lostChecked) ||
                other.lostChecked == lostChecked) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.hasLocationPermissions, hasLocationPermissions) ||
                other.hasLocationPermissions == hasLocationPermissions) &&
            (identical(other.isLoadingPosition, isLoadingPosition) ||
                other.isLoadingPosition == isLoadingPosition) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState) &&
            (identical(other.searchFailureOrSuccess, searchFailureOrSuccess) ||
                other.searchFailureOrSuccess == searchFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      foundChecked,
      lostChecked,
      const DeepCollectionEquality().hash(_results),
      address,
      pos,
      category,
      categoryId,
      dateTime,
      isConnected,
      hasLocationPermissions,
      isLoadingPosition,
      token,
      pageState,
      searchFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool foundChecked,
      required final bool lostChecked,
      required final List<SearchItem> results,
      final String address,
      required final LatLng pos,
      final String category,
      required final int categoryId,
      required final DateTime? dateTime,
      final bool isConnected,
      final bool hasLocationPermissions,
      final bool isLoadingPosition,
      final String token,
      final SearchPageState pageState,
      final Either<Failure, Success>? searchFailureOrSuccess}) = _$_SearchState;

  @override // Search parameters
  bool get foundChecked;
  @override
  bool get lostChecked;
  @override
  List<SearchItem> get results;
  @override
  String get address;
  @override
  LatLng get pos;
  @override
  String get category;
  @override
  int get categoryId;
  @override
  DateTime? get dateTime;
  @override
  bool get isConnected;
  @override
  bool get hasLocationPermissions;
  @override
  bool get isLoadingPosition;
  @override
  String get token;
  @override // Fields to handle real search
  SearchPageState get pageState;
  @override
  Either<Failure, Success>? get searchFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
