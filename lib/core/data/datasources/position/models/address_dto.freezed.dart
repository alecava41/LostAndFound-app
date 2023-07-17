// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddressDto _$AddressDtoFromJson(Map<String, dynamic> json) {
  return $AddressDto.fromJson(json);
}

/// @nodoc
mixin _$AddressDto {
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressDtoCopyWith<AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressDtoCopyWith<$Res> {
  factory $AddressDtoCopyWith(
          AddressDto value, $Res Function(AddressDto) then) =
      _$AddressDtoCopyWithImpl<$Res, AddressDto>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class _$AddressDtoCopyWithImpl<$Res, $Val extends AddressDto>
    implements $AddressDtoCopyWith<$Res> {
  _$AddressDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$AddressDtoCopyWith<$Res>
    implements $AddressDtoCopyWith<$Res> {
  factory _$$$AddressDtoCopyWith(
          _$$AddressDto value, $Res Function(_$$AddressDto) then) =
      __$$$AddressDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$$AddressDtoCopyWithImpl<$Res>
    extends _$AddressDtoCopyWithImpl<$Res, _$$AddressDto>
    implements _$$$AddressDtoCopyWith<$Res> {
  __$$$AddressDtoCopyWithImpl(
      _$$AddressDto _value, $Res Function(_$$AddressDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$$AddressDto(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$AddressDto implements $AddressDto {
  const _$$AddressDto({required this.address});

  factory _$$AddressDto.fromJson(Map<String, dynamic> json) =>
      _$$$AddressDtoFromJson(json);

  @override
  final String address;

  @override
  String toString() {
    return 'AddressDto(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$AddressDto &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$AddressDtoCopyWith<_$$AddressDto> get copyWith =>
      __$$$AddressDtoCopyWithImpl<_$$AddressDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$AddressDtoToJson(
      this,
    );
  }
}

abstract class $AddressDto implements AddressDto {
  const factory $AddressDto({required final String address}) = _$$AddressDto;

  factory $AddressDto.fromJson(Map<String, dynamic> json) =
      _$$AddressDto.fromJson;

  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$$AddressDtoCopyWith<_$$AddressDto> get copyWith =>
      throw _privateConstructorUsedError;
}
