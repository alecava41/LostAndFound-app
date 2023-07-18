// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_controller_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeControllerEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeControllerTabChanged value) tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeControllerTabChanged value)? tabChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeControllerTabChanged value)? tabChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeControllerEventCopyWith<HomeControllerEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeControllerEventCopyWith<$Res> {
  factory $HomeControllerEventCopyWith(
          HomeControllerEvent value, $Res Function(HomeControllerEvent) then) =
      _$HomeControllerEventCopyWithImpl<$Res, HomeControllerEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$HomeControllerEventCopyWithImpl<$Res, $Val extends HomeControllerEvent>
    implements $HomeControllerEventCopyWith<$Res> {
  _$HomeControllerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeControllerTabChangedCopyWith<$Res>
    implements $HomeControllerEventCopyWith<$Res> {
  factory _$$_HomeControllerTabChangedCopyWith(
          _$_HomeControllerTabChanged value,
          $Res Function(_$_HomeControllerTabChanged) then) =
      __$$_HomeControllerTabChangedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_HomeControllerTabChangedCopyWithImpl<$Res>
    extends _$HomeControllerEventCopyWithImpl<$Res, _$_HomeControllerTabChanged>
    implements _$$_HomeControllerTabChangedCopyWith<$Res> {
  __$$_HomeControllerTabChangedCopyWithImpl(_$_HomeControllerTabChanged _value,
      $Res Function(_$_HomeControllerTabChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_HomeControllerTabChanged(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeControllerTabChanged implements _HomeControllerTabChanged {
  const _$_HomeControllerTabChanged(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'HomeControllerEvent.tabChanged(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeControllerTabChanged &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeControllerTabChangedCopyWith<_$_HomeControllerTabChanged>
      get copyWith => __$$_HomeControllerTabChangedCopyWithImpl<
          _$_HomeControllerTabChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) tabChanged,
  }) {
    return tabChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? tabChanged,
  }) {
    return tabChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeControllerTabChanged value) tabChanged,
  }) {
    return tabChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeControllerTabChanged value)? tabChanged,
  }) {
    return tabChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeControllerTabChanged value)? tabChanged,
    required TResult orElse(),
  }) {
    if (tabChanged != null) {
      return tabChanged(this);
    }
    return orElse();
  }
}

abstract class _HomeControllerTabChanged implements HomeControllerEvent {
  const factory _HomeControllerTabChanged(final int index) =
      _$_HomeControllerTabChanged;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_HomeControllerTabChangedCopyWith<_$_HomeControllerTabChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeControllerState {
  int get tabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeControllerStateCopyWith<HomeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeControllerStateCopyWith<$Res> {
  factory $HomeControllerStateCopyWith(
          HomeControllerState value, $Res Function(HomeControllerState) then) =
      _$HomeControllerStateCopyWithImpl<$Res, HomeControllerState>;
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class _$HomeControllerStateCopyWithImpl<$Res, $Val extends HomeControllerState>
    implements $HomeControllerStateCopyWith<$Res> {
  _$HomeControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_value.copyWith(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeControllerStateCopyWith<$Res>
    implements $HomeControllerStateCopyWith<$Res> {
  factory _$$_HomeControllerStateCopyWith(_$_HomeControllerState value,
          $Res Function(_$_HomeControllerState) then) =
      __$$_HomeControllerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tabIndex});
}

/// @nodoc
class __$$_HomeControllerStateCopyWithImpl<$Res>
    extends _$HomeControllerStateCopyWithImpl<$Res, _$_HomeControllerState>
    implements _$$_HomeControllerStateCopyWith<$Res> {
  __$$_HomeControllerStateCopyWithImpl(_$_HomeControllerState _value,
      $Res Function(_$_HomeControllerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tabIndex = null,
  }) {
    return _then(_$_HomeControllerState(
      tabIndex: null == tabIndex
          ? _value.tabIndex
          : tabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeControllerState implements _HomeControllerState {
  const _$_HomeControllerState({required this.tabIndex});

  @override
  final int tabIndex;

  @override
  String toString() {
    return 'HomeControllerState(tabIndex: $tabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeControllerState &&
            (identical(other.tabIndex, tabIndex) ||
                other.tabIndex == tabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeControllerStateCopyWith<_$_HomeControllerState> get copyWith =>
      __$$_HomeControllerStateCopyWithImpl<_$_HomeControllerState>(
          this, _$identity);
}

abstract class _HomeControllerState implements HomeControllerState {
  const factory _HomeControllerState({required final int tabIndex}) =
      _$_HomeControllerState;

  @override
  int get tabIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HomeControllerStateCopyWith<_$_HomeControllerState> get copyWith =>
      throw _privateConstructorUsedError;
}
