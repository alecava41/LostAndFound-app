// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'select_position_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectPositionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos, String address) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
    required TResult Function() searchPosition,
    required TResult Function(String value) addressFieldChanged,
    required TResult Function(bool toggle) fakeContainerToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos, String address)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
    TResult? Function()? searchPosition,
    TResult? Function(String value)? addressFieldChanged,
    TResult? Function(bool toggle)? fakeContainerToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos, String address)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    TResult Function()? searchPosition,
    TResult Function(String value)? addressFieldChanged,
    TResult Function(bool toggle)? fakeContainerToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
    required TResult Function(_SearchPosition value) searchPosition,
    required TResult Function(_AddressFieldChanged value) addressFieldChanged,
    required TResult Function(_FakeContainerToggle value) fakeContainerToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult? Function(_SearchPosition value)? searchPosition,
    TResult? Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult? Function(_FakeContainerToggle value)? fakeContainerToggle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult Function(_SearchPosition value)? searchPosition,
    TResult Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult Function(_FakeContainerToggle value)? fakeContainerToggle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectPositionEventCopyWith<$Res> {
  factory $SelectPositionEventCopyWith(
          SelectPositionEvent value, $Res Function(SelectPositionEvent) then) =
      _$SelectPositionEventCopyWithImpl<$Res, SelectPositionEvent>;
}

/// @nodoc
class _$SelectPositionEventCopyWithImpl<$Res, $Val extends SelectPositionEvent>
    implements $SelectPositionEventCopyWith<$Res> {
  _$SelectPositionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectPositionCreatedCopyWith<$Res> {
  factory _$$_SelectPositionCreatedCopyWith(_$_SelectPositionCreated value,
          $Res Function(_$_SelectPositionCreated) then) =
      __$$_SelectPositionCreatedCopyWithImpl<$Res>;
  @useResult
  $Res call({LatLng pos, String address});
}

/// @nodoc
class __$$_SelectPositionCreatedCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_SelectPositionCreated>
    implements _$$_SelectPositionCreatedCopyWith<$Res> {
  __$$_SelectPositionCreatedCopyWithImpl(_$_SelectPositionCreated _value,
      $Res Function(_$_SelectPositionCreated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pos = null,
    Object? address = null,
  }) {
    return _then(_$_SelectPositionCreated(
      null == pos
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectPositionCreated implements _SelectPositionCreated {
  const _$_SelectPositionCreated(this.pos, this.address);

  @override
  final LatLng pos;
  @override
  final String address;

  @override
  String toString() {
    return 'SelectPositionEvent.selectPositionCreated(pos: $pos, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectPositionCreated &&
            (identical(other.pos, pos) || other.pos == pos) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pos, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectPositionCreatedCopyWith<_$_SelectPositionCreated> get copyWith =>
      __$$_SelectPositionCreatedCopyWithImpl<_$_SelectPositionCreated>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos, String address) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
    required TResult Function() searchPosition,
    required TResult Function(String value) addressFieldChanged,
    required TResult Function(bool toggle) fakeContainerToggle,
  }) {
    return selectPositionCreated(pos, address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos, String address)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
    TResult? Function()? searchPosition,
    TResult? Function(String value)? addressFieldChanged,
    TResult? Function(bool toggle)? fakeContainerToggle,
  }) {
    return selectPositionCreated?.call(pos, address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos, String address)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    TResult Function()? searchPosition,
    TResult Function(String value)? addressFieldChanged,
    TResult Function(bool toggle)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (selectPositionCreated != null) {
      return selectPositionCreated(pos, address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
    required TResult Function(_SearchPosition value) searchPosition,
    required TResult Function(_AddressFieldChanged value) addressFieldChanged,
    required TResult Function(_FakeContainerToggle value) fakeContainerToggle,
  }) {
    return selectPositionCreated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult? Function(_SearchPosition value)? searchPosition,
    TResult? Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult? Function(_FakeContainerToggle value)? fakeContainerToggle,
  }) {
    return selectPositionCreated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult Function(_SearchPosition value)? searchPosition,
    TResult Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult Function(_FakeContainerToggle value)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (selectPositionCreated != null) {
      return selectPositionCreated(this);
    }
    return orElse();
  }
}

abstract class _SelectPositionCreated implements SelectPositionEvent {
  const factory _SelectPositionCreated(final LatLng pos, final String address) =
      _$_SelectPositionCreated;

  LatLng get pos;
  String get address;
  @JsonKey(ignore: true)
  _$$_SelectPositionCreatedCopyWith<_$_SelectPositionCreated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectCurrentPositionCopyWith<$Res> {
  factory _$$_SelectCurrentPositionCopyWith(_$_SelectCurrentPosition value,
          $Res Function(_$_SelectCurrentPosition) then) =
      __$$_SelectCurrentPositionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SelectCurrentPositionCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_SelectCurrentPosition>
    implements _$$_SelectCurrentPositionCopyWith<$Res> {
  __$$_SelectCurrentPositionCopyWithImpl(_$_SelectCurrentPosition _value,
      $Res Function(_$_SelectCurrentPosition) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SelectCurrentPosition implements _SelectCurrentPosition {
  const _$_SelectCurrentPosition();

  @override
  String toString() {
    return 'SelectPositionEvent.selectCurrentPosition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SelectCurrentPosition);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos, String address) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
    required TResult Function() searchPosition,
    required TResult Function(String value) addressFieldChanged,
    required TResult Function(bool toggle) fakeContainerToggle,
  }) {
    return selectCurrentPosition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos, String address)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
    TResult? Function()? searchPosition,
    TResult? Function(String value)? addressFieldChanged,
    TResult? Function(bool toggle)? fakeContainerToggle,
  }) {
    return selectCurrentPosition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos, String address)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    TResult Function()? searchPosition,
    TResult Function(String value)? addressFieldChanged,
    TResult Function(bool toggle)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (selectCurrentPosition != null) {
      return selectCurrentPosition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
    required TResult Function(_SearchPosition value) searchPosition,
    required TResult Function(_AddressFieldChanged value) addressFieldChanged,
    required TResult Function(_FakeContainerToggle value) fakeContainerToggle,
  }) {
    return selectCurrentPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult? Function(_SearchPosition value)? searchPosition,
    TResult? Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult? Function(_FakeContainerToggle value)? fakeContainerToggle,
  }) {
    return selectCurrentPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult Function(_SearchPosition value)? searchPosition,
    TResult Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult Function(_FakeContainerToggle value)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (selectCurrentPosition != null) {
      return selectCurrentPosition(this);
    }
    return orElse();
  }
}

abstract class _SelectCurrentPosition implements SelectPositionEvent {
  const factory _SelectCurrentPosition() = _$_SelectCurrentPosition;
}

/// @nodoc
abstract class _$$_SearchPositionCopyWith<$Res> {
  factory _$$_SearchPositionCopyWith(
          _$_SearchPosition value, $Res Function(_$_SearchPosition) then) =
      __$$_SearchPositionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchPositionCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_SearchPosition>
    implements _$$_SearchPositionCopyWith<$Res> {
  __$$_SearchPositionCopyWithImpl(
      _$_SearchPosition _value, $Res Function(_$_SearchPosition) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SearchPosition implements _SearchPosition {
  const _$_SearchPosition();

  @override
  String toString() {
    return 'SelectPositionEvent.searchPosition()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchPosition);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos, String address) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
    required TResult Function() searchPosition,
    required TResult Function(String value) addressFieldChanged,
    required TResult Function(bool toggle) fakeContainerToggle,
  }) {
    return searchPosition();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos, String address)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
    TResult? Function()? searchPosition,
    TResult? Function(String value)? addressFieldChanged,
    TResult? Function(bool toggle)? fakeContainerToggle,
  }) {
    return searchPosition?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos, String address)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    TResult Function()? searchPosition,
    TResult Function(String value)? addressFieldChanged,
    TResult Function(bool toggle)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (searchPosition != null) {
      return searchPosition();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
    required TResult Function(_SearchPosition value) searchPosition,
    required TResult Function(_AddressFieldChanged value) addressFieldChanged,
    required TResult Function(_FakeContainerToggle value) fakeContainerToggle,
  }) {
    return searchPosition(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult? Function(_SearchPosition value)? searchPosition,
    TResult? Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult? Function(_FakeContainerToggle value)? fakeContainerToggle,
  }) {
    return searchPosition?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult Function(_SearchPosition value)? searchPosition,
    TResult Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult Function(_FakeContainerToggle value)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (searchPosition != null) {
      return searchPosition(this);
    }
    return orElse();
  }
}

abstract class _SearchPosition implements SelectPositionEvent {
  const factory _SearchPosition() = _$_SearchPosition;
}

/// @nodoc
abstract class _$$_AddressFieldChangedCopyWith<$Res> {
  factory _$$_AddressFieldChangedCopyWith(_$_AddressFieldChanged value,
          $Res Function(_$_AddressFieldChanged) then) =
      __$$_AddressFieldChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$_AddressFieldChangedCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_AddressFieldChanged>
    implements _$$_AddressFieldChangedCopyWith<$Res> {
  __$$_AddressFieldChangedCopyWithImpl(_$_AddressFieldChanged _value,
      $Res Function(_$_AddressFieldChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_AddressFieldChanged(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddressFieldChanged implements _AddressFieldChanged {
  const _$_AddressFieldChanged(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'SelectPositionEvent.addressFieldChanged(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddressFieldChanged &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddressFieldChangedCopyWith<_$_AddressFieldChanged> get copyWith =>
      __$$_AddressFieldChangedCopyWithImpl<_$_AddressFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos, String address) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
    required TResult Function() searchPosition,
    required TResult Function(String value) addressFieldChanged,
    required TResult Function(bool toggle) fakeContainerToggle,
  }) {
    return addressFieldChanged(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos, String address)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
    TResult? Function()? searchPosition,
    TResult? Function(String value)? addressFieldChanged,
    TResult? Function(bool toggle)? fakeContainerToggle,
  }) {
    return addressFieldChanged?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos, String address)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    TResult Function()? searchPosition,
    TResult Function(String value)? addressFieldChanged,
    TResult Function(bool toggle)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (addressFieldChanged != null) {
      return addressFieldChanged(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
    required TResult Function(_SearchPosition value) searchPosition,
    required TResult Function(_AddressFieldChanged value) addressFieldChanged,
    required TResult Function(_FakeContainerToggle value) fakeContainerToggle,
  }) {
    return addressFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult? Function(_SearchPosition value)? searchPosition,
    TResult? Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult? Function(_FakeContainerToggle value)? fakeContainerToggle,
  }) {
    return addressFieldChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult Function(_SearchPosition value)? searchPosition,
    TResult Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult Function(_FakeContainerToggle value)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (addressFieldChanged != null) {
      return addressFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _AddressFieldChanged implements SelectPositionEvent {
  const factory _AddressFieldChanged(final String value) =
      _$_AddressFieldChanged;

  String get value;
  @JsonKey(ignore: true)
  _$$_AddressFieldChangedCopyWith<_$_AddressFieldChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FakeContainerToggleCopyWith<$Res> {
  factory _$$_FakeContainerToggleCopyWith(_$_FakeContainerToggle value,
          $Res Function(_$_FakeContainerToggle) then) =
      __$$_FakeContainerToggleCopyWithImpl<$Res>;
  @useResult
  $Res call({bool toggle});
}

/// @nodoc
class __$$_FakeContainerToggleCopyWithImpl<$Res>
    extends _$SelectPositionEventCopyWithImpl<$Res, _$_FakeContainerToggle>
    implements _$$_FakeContainerToggleCopyWith<$Res> {
  __$$_FakeContainerToggleCopyWithImpl(_$_FakeContainerToggle _value,
      $Res Function(_$_FakeContainerToggle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? toggle = null,
  }) {
    return _then(_$_FakeContainerToggle(
      null == toggle
          ? _value.toggle
          : toggle // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FakeContainerToggle implements _FakeContainerToggle {
  const _$_FakeContainerToggle(this.toggle);

  @override
  final bool toggle;

  @override
  String toString() {
    return 'SelectPositionEvent.fakeContainerToggle(toggle: $toggle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FakeContainerToggle &&
            (identical(other.toggle, toggle) || other.toggle == toggle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, toggle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FakeContainerToggleCopyWith<_$_FakeContainerToggle> get copyWith =>
      __$$_FakeContainerToggleCopyWithImpl<_$_FakeContainerToggle>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng pos, String address) selectPositionCreated,
    required TResult Function() selectCurrentPosition,
    required TResult Function() searchPosition,
    required TResult Function(String value) addressFieldChanged,
    required TResult Function(bool toggle) fakeContainerToggle,
  }) {
    return fakeContainerToggle(toggle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LatLng pos, String address)? selectPositionCreated,
    TResult? Function()? selectCurrentPosition,
    TResult? Function()? searchPosition,
    TResult? Function(String value)? addressFieldChanged,
    TResult? Function(bool toggle)? fakeContainerToggle,
  }) {
    return fakeContainerToggle?.call(toggle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng pos, String address)? selectPositionCreated,
    TResult Function()? selectCurrentPosition,
    TResult Function()? searchPosition,
    TResult Function(String value)? addressFieldChanged,
    TResult Function(bool toggle)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (fakeContainerToggle != null) {
      return fakeContainerToggle(toggle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectPositionCreated value)
        selectPositionCreated,
    required TResult Function(_SelectCurrentPosition value)
        selectCurrentPosition,
    required TResult Function(_SearchPosition value) searchPosition,
    required TResult Function(_AddressFieldChanged value) addressFieldChanged,
    required TResult Function(_FakeContainerToggle value) fakeContainerToggle,
  }) {
    return fakeContainerToggle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult? Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult? Function(_SearchPosition value)? searchPosition,
    TResult? Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult? Function(_FakeContainerToggle value)? fakeContainerToggle,
  }) {
    return fakeContainerToggle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectPositionCreated value)? selectPositionCreated,
    TResult Function(_SelectCurrentPosition value)? selectCurrentPosition,
    TResult Function(_SearchPosition value)? searchPosition,
    TResult Function(_AddressFieldChanged value)? addressFieldChanged,
    TResult Function(_FakeContainerToggle value)? fakeContainerToggle,
    required TResult orElse(),
  }) {
    if (fakeContainerToggle != null) {
      return fakeContainerToggle(this);
    }
    return orElse();
  }
}

abstract class _FakeContainerToggle implements SelectPositionEvent {
  const factory _FakeContainerToggle(final bool toggle) =
      _$_FakeContainerToggle;

  bool get toggle;
  @JsonKey(ignore: true)
  _$$_FakeContainerToggleCopyWith<_$_FakeContainerToggle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SelectPositionState {
  LatLng get userCurrentPos => throw _privateConstructorUsedError;
  AddressField get address => throw _privateConstructorUsedError;
  bool get isDeviceConnected => throw _privateConstructorUsedError;
  bool get isServiceAvailable => throw _privateConstructorUsedError;
  bool get hasPermissions => throw _privateConstructorUsedError;
  bool get isPermissionPermanentlyNegated => throw _privateConstructorUsedError;
  bool get isPermissionNegated => throw _privateConstructorUsedError;
  DateTime? get lastPositionUpdate =>
      throw _privateConstructorUsedError; // UI params
  bool get isContainerExpanded => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get isSearchingCurrentPosition => throw _privateConstructorUsedError;
  bool get isSearchingAddressPosition => throw _privateConstructorUsedError;
  Either<Failure, Success>? get positionFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Failure, Success>? get addressFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectPositionStateCopyWith<SelectPositionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectPositionStateCopyWith<$Res> {
  factory $SelectPositionStateCopyWith(
          SelectPositionState value, $Res Function(SelectPositionState) then) =
      _$SelectPositionStateCopyWithImpl<$Res, SelectPositionState>;
  @useResult
  $Res call(
      {LatLng userCurrentPos,
      AddressField address,
      bool isDeviceConnected,
      bool isServiceAvailable,
      bool hasPermissions,
      bool isPermissionPermanentlyNegated,
      bool isPermissionNegated,
      DateTime? lastPositionUpdate,
      bool isContainerExpanded,
      bool showError,
      bool isSearchingCurrentPosition,
      bool isSearchingAddressPosition,
      Either<Failure, Success>? positionFailureOrSuccess,
      Either<Failure, Success>? addressFailureOrSuccess});
}

/// @nodoc
class _$SelectPositionStateCopyWithImpl<$Res, $Val extends SelectPositionState>
    implements $SelectPositionStateCopyWith<$Res> {
  _$SelectPositionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCurrentPos = null,
    Object? address = null,
    Object? isDeviceConnected = null,
    Object? isServiceAvailable = null,
    Object? hasPermissions = null,
    Object? isPermissionPermanentlyNegated = null,
    Object? isPermissionNegated = null,
    Object? lastPositionUpdate = freezed,
    Object? isContainerExpanded = null,
    Object? showError = null,
    Object? isSearchingCurrentPosition = null,
    Object? isSearchingAddressPosition = null,
    Object? positionFailureOrSuccess = freezed,
    Object? addressFailureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      userCurrentPos: null == userCurrentPos
          ? _value.userCurrentPos
          : userCurrentPos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressField,
      isDeviceConnected: null == isDeviceConnected
          ? _value.isDeviceConnected
          : isDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isServiceAvailable: null == isServiceAvailable
          ? _value.isServiceAvailable
          : isServiceAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPermissions: null == hasPermissions
          ? _value.hasPermissions
          : hasPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionPermanentlyNegated: null == isPermissionPermanentlyNegated
          ? _value.isPermissionPermanentlyNegated
          : isPermissionPermanentlyNegated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionNegated: null == isPermissionNegated
          ? _value.isPermissionNegated
          : isPermissionNegated // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPositionUpdate: freezed == lastPositionUpdate
          ? _value.lastPositionUpdate
          : lastPositionUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isContainerExpanded: null == isContainerExpanded
          ? _value.isContainerExpanded
          : isContainerExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingCurrentPosition: null == isSearchingCurrentPosition
          ? _value.isSearchingCurrentPosition
          : isSearchingCurrentPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingAddressPosition: null == isSearchingAddressPosition
          ? _value.isSearchingAddressPosition
          : isSearchingAddressPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      positionFailureOrSuccess: freezed == positionFailureOrSuccess
          ? _value.positionFailureOrSuccess
          : positionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      addressFailureOrSuccess: freezed == addressFailureOrSuccess
          ? _value.addressFailureOrSuccess
          : addressFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SelectPositionStateCopyWith<$Res>
    implements $SelectPositionStateCopyWith<$Res> {
  factory _$$_SelectPositionStateCopyWith(_$_SelectPositionState value,
          $Res Function(_$_SelectPositionState) then) =
      __$$_SelectPositionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {LatLng userCurrentPos,
      AddressField address,
      bool isDeviceConnected,
      bool isServiceAvailable,
      bool hasPermissions,
      bool isPermissionPermanentlyNegated,
      bool isPermissionNegated,
      DateTime? lastPositionUpdate,
      bool isContainerExpanded,
      bool showError,
      bool isSearchingCurrentPosition,
      bool isSearchingAddressPosition,
      Either<Failure, Success>? positionFailureOrSuccess,
      Either<Failure, Success>? addressFailureOrSuccess});
}

/// @nodoc
class __$$_SelectPositionStateCopyWithImpl<$Res>
    extends _$SelectPositionStateCopyWithImpl<$Res, _$_SelectPositionState>
    implements _$$_SelectPositionStateCopyWith<$Res> {
  __$$_SelectPositionStateCopyWithImpl(_$_SelectPositionState _value,
      $Res Function(_$_SelectPositionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCurrentPos = null,
    Object? address = null,
    Object? isDeviceConnected = null,
    Object? isServiceAvailable = null,
    Object? hasPermissions = null,
    Object? isPermissionPermanentlyNegated = null,
    Object? isPermissionNegated = null,
    Object? lastPositionUpdate = freezed,
    Object? isContainerExpanded = null,
    Object? showError = null,
    Object? isSearchingCurrentPosition = null,
    Object? isSearchingAddressPosition = null,
    Object? positionFailureOrSuccess = freezed,
    Object? addressFailureOrSuccess = freezed,
  }) {
    return _then(_$_SelectPositionState(
      userCurrentPos: null == userCurrentPos
          ? _value.userCurrentPos
          : userCurrentPos // ignore: cast_nullable_to_non_nullable
              as LatLng,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressField,
      isDeviceConnected: null == isDeviceConnected
          ? _value.isDeviceConnected
          : isDeviceConnected // ignore: cast_nullable_to_non_nullable
              as bool,
      isServiceAvailable: null == isServiceAvailable
          ? _value.isServiceAvailable
          : isServiceAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      hasPermissions: null == hasPermissions
          ? _value.hasPermissions
          : hasPermissions // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionPermanentlyNegated: null == isPermissionPermanentlyNegated
          ? _value.isPermissionPermanentlyNegated
          : isPermissionPermanentlyNegated // ignore: cast_nullable_to_non_nullable
              as bool,
      isPermissionNegated: null == isPermissionNegated
          ? _value.isPermissionNegated
          : isPermissionNegated // ignore: cast_nullable_to_non_nullable
              as bool,
      lastPositionUpdate: freezed == lastPositionUpdate
          ? _value.lastPositionUpdate
          : lastPositionUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isContainerExpanded: null == isContainerExpanded
          ? _value.isContainerExpanded
          : isContainerExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingCurrentPosition: null == isSearchingCurrentPosition
          ? _value.isSearchingCurrentPosition
          : isSearchingCurrentPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      isSearchingAddressPosition: null == isSearchingAddressPosition
          ? _value.isSearchingAddressPosition
          : isSearchingAddressPosition // ignore: cast_nullable_to_non_nullable
              as bool,
      positionFailureOrSuccess: freezed == positionFailureOrSuccess
          ? _value.positionFailureOrSuccess
          : positionFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
      addressFailureOrSuccess: freezed == addressFailureOrSuccess
          ? _value.addressFailureOrSuccess
          : addressFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<Failure, Success>?,
    ));
  }
}

/// @nodoc

class _$_SelectPositionState implements _SelectPositionState {
  const _$_SelectPositionState(
      {required this.userCurrentPos,
      required this.address,
      this.isDeviceConnected = false,
      this.isServiceAvailable = false,
      this.hasPermissions = false,
      this.isPermissionPermanentlyNegated = false,
      this.isPermissionNegated = false,
      this.lastPositionUpdate = null,
      this.isContainerExpanded = false,
      this.showError = false,
      this.isSearchingCurrentPosition = false,
      this.isSearchingAddressPosition = false,
      this.positionFailureOrSuccess,
      this.addressFailureOrSuccess});

  @override
  final LatLng userCurrentPos;
  @override
  final AddressField address;
  @override
  @JsonKey()
  final bool isDeviceConnected;
  @override
  @JsonKey()
  final bool isServiceAvailable;
  @override
  @JsonKey()
  final bool hasPermissions;
  @override
  @JsonKey()
  final bool isPermissionPermanentlyNegated;
  @override
  @JsonKey()
  final bool isPermissionNegated;
  @override
  @JsonKey()
  final DateTime? lastPositionUpdate;
// UI params
  @override
  @JsonKey()
  final bool isContainerExpanded;
  @override
  @JsonKey()
  final bool showError;
  @override
  @JsonKey()
  final bool isSearchingCurrentPosition;
  @override
  @JsonKey()
  final bool isSearchingAddressPosition;
  @override
  final Either<Failure, Success>? positionFailureOrSuccess;
  @override
  final Either<Failure, Success>? addressFailureOrSuccess;

  @override
  String toString() {
    return 'SelectPositionState(userCurrentPos: $userCurrentPos, address: $address, isDeviceConnected: $isDeviceConnected, isServiceAvailable: $isServiceAvailable, hasPermissions: $hasPermissions, isPermissionPermanentlyNegated: $isPermissionPermanentlyNegated, isPermissionNegated: $isPermissionNegated, lastPositionUpdate: $lastPositionUpdate, isContainerExpanded: $isContainerExpanded, showError: $showError, isSearchingCurrentPosition: $isSearchingCurrentPosition, isSearchingAddressPosition: $isSearchingAddressPosition, positionFailureOrSuccess: $positionFailureOrSuccess, addressFailureOrSuccess: $addressFailureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectPositionState &&
            (identical(other.userCurrentPos, userCurrentPos) ||
                other.userCurrentPos == userCurrentPos) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.isDeviceConnected, isDeviceConnected) ||
                other.isDeviceConnected == isDeviceConnected) &&
            (identical(other.isServiceAvailable, isServiceAvailable) ||
                other.isServiceAvailable == isServiceAvailable) &&
            (identical(other.hasPermissions, hasPermissions) ||
                other.hasPermissions == hasPermissions) &&
            (identical(other.isPermissionPermanentlyNegated,
                    isPermissionPermanentlyNegated) ||
                other.isPermissionPermanentlyNegated ==
                    isPermissionPermanentlyNegated) &&
            (identical(other.isPermissionNegated, isPermissionNegated) ||
                other.isPermissionNegated == isPermissionNegated) &&
            (identical(other.lastPositionUpdate, lastPositionUpdate) ||
                other.lastPositionUpdate == lastPositionUpdate) &&
            (identical(other.isContainerExpanded, isContainerExpanded) ||
                other.isContainerExpanded == isContainerExpanded) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.isSearchingCurrentPosition,
                    isSearchingCurrentPosition) ||
                other.isSearchingCurrentPosition ==
                    isSearchingCurrentPosition) &&
            (identical(other.isSearchingAddressPosition,
                    isSearchingAddressPosition) ||
                other.isSearchingAddressPosition ==
                    isSearchingAddressPosition) &&
            (identical(
                    other.positionFailureOrSuccess, positionFailureOrSuccess) ||
                other.positionFailureOrSuccess == positionFailureOrSuccess) &&
            (identical(
                    other.addressFailureOrSuccess, addressFailureOrSuccess) ||
                other.addressFailureOrSuccess == addressFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userCurrentPos,
      address,
      isDeviceConnected,
      isServiceAvailable,
      hasPermissions,
      isPermissionPermanentlyNegated,
      isPermissionNegated,
      lastPositionUpdate,
      isContainerExpanded,
      showError,
      isSearchingCurrentPosition,
      isSearchingAddressPosition,
      positionFailureOrSuccess,
      addressFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectPositionStateCopyWith<_$_SelectPositionState> get copyWith =>
      __$$_SelectPositionStateCopyWithImpl<_$_SelectPositionState>(
          this, _$identity);
}

abstract class _SelectPositionState implements SelectPositionState {
  const factory _SelectPositionState(
          {required final LatLng userCurrentPos,
          required final AddressField address,
          final bool isDeviceConnected,
          final bool isServiceAvailable,
          final bool hasPermissions,
          final bool isPermissionPermanentlyNegated,
          final bool isPermissionNegated,
          final DateTime? lastPositionUpdate,
          final bool isContainerExpanded,
          final bool showError,
          final bool isSearchingCurrentPosition,
          final bool isSearchingAddressPosition,
          final Either<Failure, Success>? positionFailureOrSuccess,
          final Either<Failure, Success>? addressFailureOrSuccess}) =
      _$_SelectPositionState;

  @override
  LatLng get userCurrentPos;
  @override
  AddressField get address;
  @override
  bool get isDeviceConnected;
  @override
  bool get isServiceAvailable;
  @override
  bool get hasPermissions;
  @override
  bool get isPermissionPermanentlyNegated;
  @override
  bool get isPermissionNegated;
  @override
  DateTime? get lastPositionUpdate;
  @override // UI params
  bool get isContainerExpanded;
  @override
  bool get showError;
  @override
  bool get isSearchingCurrentPosition;
  @override
  bool get isSearchingAddressPosition;
  @override
  Either<Failure, Success>? get positionFailureOrSuccess;
  @override
  Either<Failure, Success>? get addressFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$_SelectPositionStateCopyWith<_$_SelectPositionState> get copyWith =>
      throw _privateConstructorUsedError;
}
