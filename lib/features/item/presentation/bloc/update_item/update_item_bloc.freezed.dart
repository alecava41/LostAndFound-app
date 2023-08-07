// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UpdateItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateItemEventCopyWith<$Res> {
  factory $UpdateItemEventCopyWith(
          UpdateItemEvent value, $Res Function(UpdateItemEvent) then) =
      _$UpdateItemEventCopyWithImpl<$Res, UpdateItemEvent>;
}

/// @nodoc
class _$UpdateItemEventCopyWithImpl<$Res, $Val extends UpdateItemEvent>
    implements $UpdateItemEventCopyWith<$Res> {
  _$UpdateItemEventCopyWithImpl(this._value, this._then);

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
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_ContentCreated>
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
    return 'UpdateItemEvent.contentCreated(itemId: $itemId)';
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
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return contentCreated(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return contentCreated?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
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
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return contentCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return contentCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (contentCreated != null) {
      return contentCreated(this);
    }
    return orElse();
  }
}

abstract class _ContentCreated implements UpdateItemEvent {
  const factory _ContentCreated(final int itemId) = _$_ContentCreated;

  int get itemId;
  @JsonKey(ignore: true)
  _$$_ContentCreatedCopyWith<_$_ContentCreated> get copyWith =>
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
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_TitleChanged>
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
    return 'UpdateItemEvent.titleChanged(input: $input)';
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
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return titleChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return titleChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
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
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements UpdateItemEvent {
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
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_QuestionChanged>
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
    return 'UpdateItemEvent.questionChanged(input: $input)';
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
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return questionChanged(input);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return questionChanged?.call(input);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
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
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return questionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return questionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (questionChanged != null) {
      return questionChanged(this);
    }
    return orElse();
  }
}

abstract class _QuestionChanged implements UpdateItemEvent {
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
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_PositionSelected>
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
    return 'UpdateItemEvent.positionSelected(pos: $pos)';
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
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return positionSelected(pos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return positionSelected?.call(pos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
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
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return positionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return positionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (positionSelected != null) {
      return positionSelected(this);
    }
    return orElse();
  }
}

abstract class _PositionSelected implements UpdateItemEvent {
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
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_CategorySelected>
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
    return 'UpdateItemEvent.categorySelected(id: $id, category: $category)';
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
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return categorySelected(id, category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return categorySelected?.call(id, category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
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
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return categorySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return categorySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (categorySelected != null) {
      return categorySelected(this);
    }
    return orElse();
  }
}

abstract class _CategorySelected implements UpdateItemEvent {
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
  $Res call({XFile image});
}

/// @nodoc
class __$$_ImageSelectedCopyWithImpl<$Res>
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_ImageSelected>
    implements _$$_ImageSelectedCopyWith<$Res> {
  __$$_ImageSelectedCopyWithImpl(
      _$_ImageSelected _value, $Res Function(_$_ImageSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_ImageSelected(
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$_ImageSelected implements _ImageSelected {
  const _$_ImageSelected(this.image);

  @override
  final XFile image;

  @override
  String toString() {
    return 'UpdateItemEvent.imageSelected(image: $image)';
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
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return imageSelected(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return imageSelected?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return imageSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return imageSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (imageSelected != null) {
      return imageSelected(this);
    }
    return orElse();
  }
}

abstract class _ImageSelected implements UpdateItemEvent {
  const factory _ImageSelected(final XFile image) = _$_ImageSelected;

  XFile get image;
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
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_ImageDeleted>
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
    return 'UpdateItemEvent.imageDeleted()';
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
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return imageDeleted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return imageDeleted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
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
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return imageDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return imageDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (imageDeleted != null) {
      return imageDeleted(this);
    }
    return orElse();
  }
}

abstract class _ImageDeleted implements UpdateItemEvent {
  const factory _ImageDeleted() = _$_ImageDeleted;
}

/// @nodoc
abstract class _$$_UpdateSubmittedCopyWith<$Res> {
  factory _$$_UpdateSubmittedCopyWith(
          _$_UpdateSubmitted value, $Res Function(_$_UpdateSubmitted) then) =
      __$$_UpdateSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UpdateSubmittedCopyWithImpl<$Res>
    extends _$UpdateItemEventCopyWithImpl<$Res, _$_UpdateSubmitted>
    implements _$$_UpdateSubmittedCopyWith<$Res> {
  __$$_UpdateSubmittedCopyWithImpl(
      _$_UpdateSubmitted _value, $Res Function(_$_UpdateSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UpdateSubmitted implements _UpdateSubmitted {
  const _$_UpdateSubmitted();

  @override
  String toString() {
    return 'UpdateItemEvent.updateSubmitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UpdateSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int itemId) contentCreated,
    required TResult Function(String input) titleChanged,
    required TResult Function(String input) questionChanged,
    required TResult Function(LatLng pos) positionSelected,
    required TResult Function(int id, String category) categorySelected,
    required TResult Function(XFile image) imageSelected,
    required TResult Function() imageDeleted,
    required TResult Function() updateSubmitted,
  }) {
    return updateSubmitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int itemId)? contentCreated,
    TResult? Function(String input)? titleChanged,
    TResult? Function(String input)? questionChanged,
    TResult? Function(LatLng pos)? positionSelected,
    TResult? Function(int id, String category)? categorySelected,
    TResult? Function(XFile image)? imageSelected,
    TResult? Function()? imageDeleted,
    TResult? Function()? updateSubmitted,
  }) {
    return updateSubmitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int itemId)? contentCreated,
    TResult Function(String input)? titleChanged,
    TResult Function(String input)? questionChanged,
    TResult Function(LatLng pos)? positionSelected,
    TResult Function(int id, String category)? categorySelected,
    TResult Function(XFile image)? imageSelected,
    TResult Function()? imageDeleted,
    TResult Function()? updateSubmitted,
    required TResult orElse(),
  }) {
    if (updateSubmitted != null) {
      return updateSubmitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentCreated value) contentCreated,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_QuestionChanged value) questionChanged,
    required TResult Function(_PositionSelected value) positionSelected,
    required TResult Function(_CategorySelected value) categorySelected,
    required TResult Function(_ImageSelected value) imageSelected,
    required TResult Function(_ImageDeleted value) imageDeleted,
    required TResult Function(_UpdateSubmitted value) updateSubmitted,
  }) {
    return updateSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentCreated value)? contentCreated,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_QuestionChanged value)? questionChanged,
    TResult? Function(_PositionSelected value)? positionSelected,
    TResult? Function(_CategorySelected value)? categorySelected,
    TResult? Function(_ImageSelected value)? imageSelected,
    TResult? Function(_ImageDeleted value)? imageDeleted,
    TResult? Function(_UpdateSubmitted value)? updateSubmitted,
  }) {
    return updateSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentCreated value)? contentCreated,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_QuestionChanged value)? questionChanged,
    TResult Function(_PositionSelected value)? positionSelected,
    TResult Function(_CategorySelected value)? categorySelected,
    TResult Function(_ImageSelected value)? imageSelected,
    TResult Function(_ImageDeleted value)? imageDeleted,
    TResult Function(_UpdateSubmitted value)? updateSubmitted,
    required TResult orElse(),
  }) {
    if (updateSubmitted != null) {
      return updateSubmitted(this);
    }
    return orElse();
  }
}

abstract class _UpdateSubmitted implements UpdateItemEvent {
  const factory _UpdateSubmitted() = _$_UpdateSubmitted;
}

/// @nodoc
mixin _$UpdateItemState {
// Item to be updated
  item_entity.Item? get item =>
      throw _privateConstructorUsedError; // Update item parameters
  XFile? get image => throw _privateConstructorUsedError;
  LatLng get pos => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  TitleField get title => throw _privateConstructorUsedError;
  QuestionField get question =>
      throw _privateConstructorUsedError; // Additional params
  String get token => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool get isConnected => throw _privateConstructorUsedError;
  bool get hasLocationPermissions => throw _privateConstructorUsedError;
  dynamic get showError => throw _privateConstructorUsedError;
  dynamic get isLoading => throw _privateConstructorUsedError;
  Either<Failure, Success>? get loadFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get updateFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get imageUploadFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UpdateItemStateCopyWith<UpdateItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateItemStateCopyWith<$Res> {
  factory $UpdateItemStateCopyWith(
          UpdateItemState value, $Res Function(UpdateItemState) then) =
      _$UpdateItemStateCopyWithImpl<$Res, UpdateItemState>;
  @useResult
  $Res call(
      {item_entity.Item? item,
      XFile? image,
      LatLng pos,
      int categoryId,
      TitleField title,
      QuestionField question,
      String token,
      String category,
      String address,
      bool isConnected,
      bool hasLocationPermissions,
      dynamic showError,
      dynamic isLoading,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? updateFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess});
}

/// @nodoc
class _$UpdateItemStateCopyWithImpl<$Res, $Val extends UpdateItemState>
    implements $UpdateItemStateCopyWith<$Res> {
  _$UpdateItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? image = freezed,
    Object? pos = null,
    Object? categoryId = null,
    Object? title = null,
    Object? question = null,
    Object? token = null,
    Object? category = null,
    Object? address = null,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? showError = freezed,
    Object? isLoading = freezed,
    Object? loadFailureOrSuccess = freezed,
    Object? updateFailureOrSuccess = freezed,
    Object? imageUploadFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as item_entity.Item?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
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
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      updateFailureOrSuccess: freezed == updateFailureOrSuccess
          ? _value.updateFailureOrSuccess
          : updateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      imageUploadFailureOrSuccess: freezed == imageUploadFailureOrSuccess
          ? _value.imageUploadFailureOrSuccess
          : imageUploadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UpdateItemStateCopyWith<$Res>
    implements $UpdateItemStateCopyWith<$Res> {
  factory _$$_UpdateItemStateCopyWith(
          _$_UpdateItemState value, $Res Function(_$_UpdateItemState) then) =
      __$$_UpdateItemStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {item_entity.Item? item,
      XFile? image,
      LatLng pos,
      int categoryId,
      TitleField title,
      QuestionField question,
      String token,
      String category,
      String address,
      bool isConnected,
      bool hasLocationPermissions,
      dynamic showError,
      dynamic isLoading,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? updateFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess});
}

/// @nodoc
class __$$_UpdateItemStateCopyWithImpl<$Res>
    extends _$UpdateItemStateCopyWithImpl<$Res, _$_UpdateItemState>
    implements _$$_UpdateItemStateCopyWith<$Res> {
  __$$_UpdateItemStateCopyWithImpl(
      _$_UpdateItemState _value, $Res Function(_$_UpdateItemState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? item = freezed,
    Object? image = freezed,
    Object? pos = null,
    Object? categoryId = null,
    Object? title = null,
    Object? question = null,
    Object? token = null,
    Object? category = null,
    Object? address = null,
    Object? isConnected = null,
    Object? hasLocationPermissions = null,
    Object? showError = freezed,
    Object? isLoading = freezed,
    Object? loadFailureOrSuccess = freezed,
    Object? updateFailureOrSuccess = freezed,
    Object? imageUploadFailureOrSuccess = freezed,
  }) {
    return _then(_$_UpdateItemState(
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as item_entity.Item?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
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
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
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
      loadFailureOrSuccess: freezed == loadFailureOrSuccess
          ? _value.loadFailureOrSuccess
          : loadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      updateFailureOrSuccess: freezed == updateFailureOrSuccess
          ? _value.updateFailureOrSuccess
          : updateFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      imageUploadFailureOrSuccess: freezed == imageUploadFailureOrSuccess
          ? _value.imageUploadFailureOrSuccess
          : imageUploadFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_UpdateItemState implements _UpdateItemState {
  const _$_UpdateItemState(
      {required this.item,
      required this.image,
      required this.pos,
      required this.categoryId,
      required this.title,
      required this.question,
      this.token = "",
      this.category = "",
      this.address = "",
      this.isConnected = false,
      this.hasLocationPermissions = false,
      this.showError = false,
      this.isLoading = false,
      this.loadFailureOrSuccess,
      this.updateFailureOrSuccess,
      this.imageUploadFailureOrSuccess});

// Item to be updated
  @override
  final item_entity.Item? item;
// Update item parameters
  @override
  final XFile? image;
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
  final String token;
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
  final Either<Failure, Success>? loadFailureOrSuccess;
  @override
  final Either<Failure, Success>? updateFailureOrSuccess;
  @override
  final Either<Failure, Success>? imageUploadFailureOrSuccess;

  @override
  String toString() {
    return 'UpdateItemState(item: $item, image: $image, pos: $pos, categoryId: $categoryId, title: $title, question: $question, token: $token, category: $category, address: $address, isConnected: $isConnected, hasLocationPermissions: $hasLocationPermissions, showError: $showError, isLoading: $isLoading, loadFailureOrSuccess: $loadFailureOrSuccess, updateFailureOrSuccess: $updateFailureOrSuccess, imageUploadFailureOrSuccess: $imageUploadFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateItemState &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected) &&
            (identical(other.hasLocationPermissions, hasLocationPermissions) ||
                other.hasLocationPermissions == hasLocationPermissions) &&
            const DeepCollectionEquality().equals(other.showError, showError) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            (identical(other.loadFailureOrSuccess, loadFailureOrSuccess) ||
                other.loadFailureOrSuccess == loadFailureOrSuccess) &&
            (identical(other.updateFailureOrSuccess, updateFailureOrSuccess) ||
                other.updateFailureOrSuccess == updateFailureOrSuccess) &&
            (identical(other.imageUploadFailureOrSuccess,
                    imageUploadFailureOrSuccess) ||
                other.imageUploadFailureOrSuccess ==
                    imageUploadFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      item,
      image,
      pos,
      categoryId,
      title,
      question,
      token,
      category,
      address,
      isConnected,
      hasLocationPermissions,
      const DeepCollectionEquality().hash(showError),
      const DeepCollectionEquality().hash(isLoading),
      loadFailureOrSuccess,
      updateFailureOrSuccess,
      imageUploadFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateItemStateCopyWith<_$_UpdateItemState> get copyWith =>
      __$$_UpdateItemStateCopyWithImpl<_$_UpdateItemState>(this, _$identity);
}

abstract class _UpdateItemState implements UpdateItemState {
  const factory _UpdateItemState(
          {required final item_entity.Item? item,
          required final XFile? image,
          required final LatLng pos,
          required final int categoryId,
          required final TitleField title,
          required final QuestionField question,
          final String token,
          final String category,
          final String address,
          final bool isConnected,
          final bool hasLocationPermissions,
          final dynamic showError,
          final dynamic isLoading,
          final Either<Failure, Success>? loadFailureOrSuccess,
          final Either<Failure, Success>? updateFailureOrSuccess,
          final Either<Failure, Success>? imageUploadFailureOrSuccess}) =
      _$_UpdateItemState;

  @override // Item to be updated
  item_entity.Item? get item;
  @override // Update item parameters
  XFile? get image;
  @override
  LatLng get pos;
  @override
  int get categoryId;
  @override
  TitleField get title;
  @override
  QuestionField get question;
  @override // Additional params
  String get token;
  @override
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
  Either<Failure, Success>? get loadFailureOrSuccess;
  @override
  Either<Failure, Success>? get updateFailureOrSuccess;
  @override
  Either<Failure, Success>? get imageUploadFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateItemStateCopyWith<_$_UpdateItemState> get copyWith =>
      throw _privateConstructorUsedError;
}
