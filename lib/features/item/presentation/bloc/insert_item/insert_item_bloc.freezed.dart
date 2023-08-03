// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'insert_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InsertItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertItemEventCopyWith<$Res> {
  factory $InsertItemEventCopyWith(
          InsertItemEvent value, $Res Function(InsertItemEvent) then) =
      _$InsertItemEventCopyWithImpl<$Res, InsertItemEvent>;
}

/// @nodoc
class _$InsertItemEventCopyWithImpl<$Res, $Val extends InsertItemEvent>
    implements $InsertItemEventCopyWith<$Res> {
  _$InsertItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TypeChangedCopyWith<$Res> {
  factory _$$_TypeChangedCopyWith(
          _$_TypeChanged value, $Res Function(_$_TypeChanged) then) =
      __$$_TypeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ItemType? type});
}

/// @nodoc
class __$$_TypeChangedCopyWithImpl<$Res>
    extends _$InsertItemEventCopyWithImpl<$Res, _$_TypeChanged>
    implements _$$_TypeChangedCopyWith<$Res> {
  __$$_TypeChangedCopyWithImpl(
      _$_TypeChanged _value, $Res Function(_$_TypeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$_TypeChanged(
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType?,
    ));
  }
}

/// @nodoc

class _$_TypeChanged implements _TypeChanged {
  const _$_TypeChanged(this.type);

  @override
  final ItemType? type;

  @override
  String toString() {
    return 'InsertItemEvent.typeChanged(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeChanged &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      __$$_TypeChangedCopyWithImpl<_$_TypeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return typeChanged(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return typeChanged?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return typeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return typeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (typeChanged != null) {
      return typeChanged(this);
    }
    return orElse();
  }
}

abstract class _TypeChanged implements InsertItemEvent {
  const factory _TypeChanged(final ItemType? type) = _$_TypeChanged;

  ItemType? get type;
  @JsonKey(ignore: true)
  _$$_TypeChangedCopyWith<_$_TypeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$InsertItemEventCopyWithImpl<$Res, _$_TitleChanged>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$_TitleChanged(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'InsertItemEvent.titleChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return titleChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return titleChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements InsertItemEvent {
  const factory _TitleChanged(final String input) = _$_TitleChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_QuestionChangedCopyWith<$Res> {
  factory _$$_QuestionChangedCopyWith(
          _$_QuestionChanged value, $Res Function(_$_QuestionChanged) then) =
      __$$_QuestionChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String input});
}

/// @nodoc
class __$$_QuestionChangedCopyWithImpl<$Res>
    extends _$InsertItemEventCopyWithImpl<$Res, _$_QuestionChanged>
    implements _$$_QuestionChangedCopyWith<$Res> {
  __$$_QuestionChangedCopyWithImpl(
      _$_QuestionChanged _value, $Res Function(_$_QuestionChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? input = null,
  }) {
    return _then(_$_QuestionChanged(
      null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QuestionChanged implements _QuestionChanged {
  const _$_QuestionChanged(this.input);

  @override
  final String input;

  @override
  String toString() {
    return 'InsertItemEvent.questionChanged(input: $input)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionChanged &&
            (identical(other.input, input) || other.input == input));
  }

  @override
  int get hashCode => Object.hash(runtimeType, input);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionChangedCopyWith<_$_QuestionChanged> get copyWith =>
      __$$_QuestionChangedCopyWithImpl<_$_QuestionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return questionChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return questionChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) {
    if (questionChanged != null) {
      return questionChanged(input);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return questionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return questionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (questionChanged != null) {
      return questionChanged(this);
    }
    return orElse();
  }
}

abstract class _QuestionChanged implements InsertItemEvent {
  const factory _QuestionChanged(final String input) = _$_QuestionChanged;

  String get input;
  @JsonKey(ignore: true)
  _$$_QuestionChangedCopyWith<_$_QuestionChanged> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$InsertItemEventCopyWithImpl<$Res, _$_PositionSelected>
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
    return 'InsertItemEvent.positionSelected(pos: $pos)';
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
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return positionSelected(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return positionSelected?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
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
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return positionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return positionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (positionSelected != null) {
      return positionSelected(this);
    }
    return orElse();
  }
}

abstract class _PositionSelected implements InsertItemEvent {
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
    extends _$InsertItemEventCopyWithImpl<$Res, _$_CategorySelected>
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
    return 'InsertItemEvent.categorySelected(id: $id, category: $category)';
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
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return categorySelected(id, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return categorySelected?.call(id, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
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
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements InsertItemEvent {
  const factory _CategorySelected(final int id, final String category) =
      _$_CategorySelected;

  int get id;
  String get category;
  @JsonKey(ignore: true)
  _$$_CategorySelectedCopyWith<_$_CategorySelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageSelectedCopyWith<$Res> {
  factory _$$_ImageSelectedCopyWith(
          _$_ImageSelected value, $Res Function(_$_ImageSelected) then) =
      __$$_ImageSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile image, String path});
}

/// @nodoc
class __$$_ImageSelectedCopyWithImpl<$Res>
    extends _$InsertItemEventCopyWithImpl<$Res, _$_ImageSelected>
    implements _$$_ImageSelectedCopyWith<$Res> {
  __$$_ImageSelectedCopyWithImpl(
      _$_ImageSelected _value, $Res Function(_$_ImageSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? path = null,
  }) {
    return _then(_$_ImageSelected(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ImageSelected implements _ImageSelected {
  const _$_ImageSelected(this.image, this.path);

  @override
  final XFile image;
  @override
  final String path;

  @override
  String toString() {
    return 'InsertItemEvent.imageSelected(image: $image, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageSelected &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageSelectedCopyWith<_$_ImageSelected> get copyWith =>
      __$$_ImageSelectedCopyWithImpl<_$_ImageSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return imageSelected(image, path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return imageSelected?.call(image, path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(image, path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return imageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageSelected implements InsertItemEvent {
  const factory _ImageSelected(final XFile image, final String path) =
      _$_ImageSelected;

  XFile get image;
  String get path;
  @JsonKey(ignore: true)
  _$$_ImageSelectedCopyWith<_$_ImageSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ImageDeletedCopyWith<$Res> {
  factory _$$_ImageDeletedCopyWith(
          _$_ImageDeleted value, $Res Function(_$_ImageDeleted) then) =
      __$$_ImageDeletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ImageDeletedCopyWithImpl<$Res>
    extends _$InsertItemEventCopyWithImpl<$Res, _$_ImageDeleted>
    implements _$$_ImageDeletedCopyWith<$Res> {
  __$$_ImageDeletedCopyWithImpl(
      _$_ImageDeleted _value, $Res Function(_$_ImageDeleted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ImageDeleted implements _ImageDeleted {
  const _$_ImageDeleted();

  @override
  String toString() {
    return 'InsertItemEvent.imageDeleted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ImageDeleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return imageDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return imageDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return imageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements InsertItemEvent {
  const factory _ImageDeleted() = _$_ImageDeleted;
}

/// @nodoc
abstract class _$$_InsertSubmittedCopyWith<$Res> {
  factory _$$_InsertSubmittedCopyWith(
          _$_InsertSubmitted value, $Res Function(_$_InsertSubmitted) then) =
      __$$_InsertSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InsertSubmittedCopyWithImpl<$Res>
    extends _$InsertItemEventCopyWithImpl<$Res, _$_InsertSubmitted>
    implements _$$_InsertSubmittedCopyWith<$Res> {
  __$$_InsertSubmittedCopyWithImpl(
      _$_InsertSubmitted _value, $Res Function(_$_InsertSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InsertSubmitted implements _InsertSubmitted {
  const _$_InsertSubmitted();

  @override
  String toString() {
    return 'InsertItemEvent.insertSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InsertSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ItemType? type) typeChanged,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image, String path) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() insertSubmitted,
  }) {
    return insertSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ItemType? type)? typeChanged,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image, String path)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? insertSubmitted,
  }) {
    return insertSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ItemType? type)? typeChanged,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image, String path)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? insertSubmitted,
    required TResult orElse(),
  }) {
    if (insertSubmitted != null) {
      return insertSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TypeChanged value) typeChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_InsertSubmitted value) insertSubmitted,
  }) {
    return insertSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TypeChanged value)? typeChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_InsertSubmitted value)? insertSubmitted,
  }) {
    return insertSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TypeChanged value)? typeChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_InsertSubmitted value)? insertSubmitted,
    required TResult orElse(),
  }) {
    if (insertSubmitted != null) {
      return insertSubmitted(this);
    }
    return orElse();
  }
}

abstract class _InsertSubmitted implements InsertItemEvent {
  const factory _InsertSubmitted() = _$_InsertSubmitted;
}

/// @nodoc
mixin _$InsertItemState {
// Insert item parameters
  ItemType get type => throw _privateConstructorUsedError;
  XFile? get image => throw _privateConstructorUsedError;
  String? get imagePath => throw _privateConstructorUsedError;
  LatLng get pos => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  TitleField get title => throw _privateConstructorUsedError;
  QuestionField get question =>
      throw _privateConstructorUsedError; // Additional params
  String get category => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get hasLocationPermissions => throw _privateConstructorUsedError;
  dynamic get showError => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Success>? get insertFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get imageUploadFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InsertItemStateCopyWith<InsertItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InsertItemStateCopyWith<$Res> {
  factory $InsertItemStateCopyWith(
          InsertItemState value, $Res Function(InsertItemState) then) =
      _$InsertItemStateCopyWithImpl<$Res, InsertItemState>;
  @useResult
  $Res call(
      {ItemType type,
      XFile? image,
      String? imagePath,
      LatLng pos,
      int categoryId,
      TitleField title,
      QuestionField question,
      String category,
      String address,
      bool isConnected,
      bool hasLocationPermissions,
      dynamic showError,
      dynamic isLoading,
      Either<Failure, Success>? insertFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess});
}

/// @nodoc
class _$InsertItemStateCopyWithImpl<$Res, $Val extends InsertItemState>
    implements $InsertItemStateCopyWith<$Res> {
  _$InsertItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = freezed,
    Object? imagePath = freezed,
    Object? pos = null,
    Object? categoryId = null,
    Object? title = null,
    Object? question = null,
    Object? category = null,
    Object? address = null,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? showError = freezed,
    Object? isLoading = freezed,
    Object? insertFailureOrSuccess = freezed,
    Object? imageUploadFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TitleField,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionField,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermissions: null == hasLocationPermissions
          ? _value.hasLocationPermissions
          : hasLocationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: freezed == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as dynamic,
      insertFailureOrSuccess: freezed == insertFailureOrSuccess
          ? _value.insertFailureOrSuccess
          : insertFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      imageUploadFailureOrSuccess: freezed == imageUploadFailureOrSuccess
          ? _value.imageUploadFailureOrSuccess
          : imageUploadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InsertItemStateCopyWith<$Res>
    implements $InsertItemStateCopyWith<$Res> {
  factory _$$_InsertItemStateCopyWith(
          _$_InsertItemState value, $Res Function(_$_InsertItemState) then) =
      __$$_InsertItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ItemType type,
      XFile? image,
      String? imagePath,
      LatLng pos,
      int categoryId,
      TitleField title,
      QuestionField question,
      String category,
      String address,
      bool isConnected,
      bool hasLocationPermissions,
      dynamic showError,
      dynamic isLoading,
      Either<Failure, Success>? insertFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess});
}

/// @nodoc
class __$$_InsertItemStateCopyWithImpl<$Res>
    extends _$InsertItemStateCopyWithImpl<$Res, _$_InsertItemState>
    implements _$$_InsertItemStateCopyWith<$Res> {
  __$$_InsertItemStateCopyWithImpl(
      _$_InsertItemState _value, $Res Function(_$_InsertItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? image = freezed,
    Object? imagePath = freezed,
    Object? pos = null,
    Object? categoryId = null,
    Object? title = null,
    Object? question = null,
    Object? category = null,
    Object? address = null,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? showError = freezed,
    Object? isLoading = freezed,
    Object? insertFailureOrSuccess = freezed,
    Object? imageUploadFailureOrSuccess = freezed,
  }) {
    return _then(_$_InsertItemState(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      imagePath: freezed == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String?,
      pos: null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as TitleField,
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as QuestionField,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      hasLocationPermissions: null == hasLocationPermissions
          ? _value.hasLocationPermissions
          : hasLocationPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: freezed == showError ? _value.showError! : showError,
      isLoading: freezed == isLoading ? _value.isLoading! : isLoading,
      insertFailureOrSuccess: freezed == insertFailureOrSuccess
          ? _value.insertFailureOrSuccess
          : insertFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      imageUploadFailureOrSuccess: freezed == imageUploadFailureOrSuccess
          ? _value.imageUploadFailureOrSuccess
          : imageUploadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_InsertItemState implements _InsertItemState {
  const _$_InsertItemState(
      {required this.type,
      required this.image,
      required this.imagePath,
      required this.pos,
      required this.categoryId,
      required this.title,
      required this.question,
      this.category = "",
      this.address = "",
      this.isConnected = false,
      this.hasLocationPermissions = false,
      this.showError = false,
      this.isLoading = false,
      this.insertFailureOrSuccess,
      this.imageUploadFailureOrSuccess});

// Insert item parameters
  @override
  final ItemType type;
  @override
  final XFile? image;
  @override
  final String? imagePath;
  @override
  final LatLng pos;
  @override
  final int categoryId;
  @override
  final TitleField title;
  @override
  final QuestionField question;
// Additional params
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String address;
  @override
  @JsonKey()
  final bool isConnected;
  @override
  @JsonKey()
  final bool hasLocationPermissions;
  @override
  @JsonKey()
  final dynamic showError;
  @override
  @JsonKey()
  final dynamic isLoading;
  @override
  final Either<Failure, Success>? insertFailureOrSuccess;
  @override
  final Either<Failure, Success>? imageUploadFailureOrSuccess;

  @override
  String toString() {
    return 'InsertItemState(type: $type, image: $image, imagePath: $imagePath, pos: $pos, categoryId: $categoryId, title: $title, question: $question, category: $category, address: $address, isConnected: $isConnected, hasLocationPermissions: $hasLocationPermissions, showError: $showError, isLoading: $isLoading, insertFailureOrSuccess: $insertFailureOrSuccess, imageUploadFailureOrSuccess: $imageUploadFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InsertItemState &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.hasLocationPermissions, hasLocationPermissions) ||
                other.hasLocationPermissions == hasLocationPermissions) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.insertFailureOrSuccess, insertFailureOrSuccess) ||
                other.insertFailureOrSuccess == insertFailureOrSuccess) &&
            (identical(other.imageUploadFailureOrSuccess,
                    imageUploadFailureOrSuccess) ||
                other.imageUploadFailureOrSuccess ==
                    imageUploadFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      image,
      imagePath,
      pos,
      categoryId,
      title,
      question,
      category,
      address,
      isConnected,
      hasLocationPermissions,
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(isLoading),
      insertFailureOrSuccess,
      imageUploadFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertItemStateCopyWith<_$_InsertItemState> get copyWith =>
      __$$_InsertItemStateCopyWithImpl<_$_InsertItemState>(this, _$identity);
}

abstract class _InsertItemState implements InsertItemState {
  const factory _InsertItemState(
          {required final ItemType type,
          required final XFile? image,
          required final String? imagePath,
          required final LatLng pos,
          required final int categoryId,
          required final TitleField title,
          required final QuestionField question,
          final String category,
          final String address,
          final bool isConnected,
          final bool hasLocationPermissions,
          final dynamic showError,
          final dynamic isLoading,
          final Either<Failure, Success>? insertFailureOrSuccess,
          final Either<Failure, Success>? imageUploadFailureOrSuccess}) =
      _$_InsertItemState;

  @override // Insert item parameters
  ItemType get type;
  @override
  XFile? get image;
  @override
  String? get imagePath;
  @override
  LatLng get pos;
  @override
  int get categoryId;
  @override
  TitleField get title;
  @override
  QuestionField get question;
  @override // Additional params
  String get category;
  @override
  String get address;
  @override
  bool get isConnected;
  @override
  bool get hasLocationPermissions;
  @override
  dynamic get showError;
  @override
  dynamic get isLoading;
  @override
  Either<Failure, Success>? get insertFailureOrSuccess;
  @override
  Either<Failure, Success>? get imageUploadFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_InsertItemStateCopyWith<_$_InsertItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
