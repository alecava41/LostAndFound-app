// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemResponseDto _$ItemResponseDtoFromJson(Map<String, dynamic> json) {
  return $ItemResponseDto.fromJson(json);
}

/// @nodoc
mixin _$ItemResponseDto {
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemResponseDtoCopyWith<ItemResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemResponseDtoCopyWith<$Res> {
  factory $ItemResponseDtoCopyWith(
          ItemResponseDto value, $Res Function(ItemResponseDto) then) =
      _$ItemResponseDtoCopyWithImpl<$Res, ItemResponseDto>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ItemResponseDtoCopyWithImpl<$Res, $Val extends ItemResponseDto>
    implements $ItemResponseDtoCopyWith<$Res> {
  _$ItemResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$ItemResponseDtoCopyWith<$Res>
    implements $ItemResponseDtoCopyWith<$Res> {
  factory _$$$ItemResponseDtoCopyWith(
          _$$ItemResponseDto value, $Res Function(_$$ItemResponseDto) then) =
      __$$$ItemResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$$ItemResponseDtoCopyWithImpl<$Res>
    extends _$ItemResponseDtoCopyWithImpl<$Res, _$$ItemResponseDto>
    implements _$$$ItemResponseDtoCopyWith<$Res> {
  __$$$ItemResponseDtoCopyWithImpl(
      _$$ItemResponseDto _value, $Res Function(_$$ItemResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$$ItemResponseDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ItemResponseDto implements $ItemResponseDto {
  const _$$ItemResponseDto({required this.id});

  factory _$$ItemResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$$ItemResponseDtoFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ItemResponseDto(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ItemResponseDto &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ItemResponseDtoCopyWith<_$$ItemResponseDto> get copyWith =>
      __$$$ItemResponseDtoCopyWithImpl<_$$ItemResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$ItemResponseDtoToJson(
      this,
    );
  }
}

abstract class $ItemResponseDto implements ItemResponseDto {
  const factory $ItemResponseDto({required final int id}) = _$$ItemResponseDto;

  factory $ItemResponseDto.fromJson(Map<String, dynamic> json) =
      _$$ItemResponseDto.fromJson;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$$ItemResponseDtoCopyWith<_$$ItemResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
