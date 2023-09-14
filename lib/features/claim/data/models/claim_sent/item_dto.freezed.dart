// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return $ItemDto.fromJson(json);
}

/// @nodoc
mixin _$ItemDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res, ItemDto>;
  @useResult
  $Res call({int id, String title, bool? image});
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res, $Val extends ItemDto>
    implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$$ItemDtoCopyWith(
          _$$ItemDto value, $Res Function(_$$ItemDto) then) =
      __$$$ItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, bool? image});
}

/// @nodoc
class __$$$ItemDtoCopyWithImpl<$Res>
    extends _$ItemDtoCopyWithImpl<$Res, _$$ItemDto>
    implements _$$$ItemDtoCopyWith<$Res> {
  __$$$ItemDtoCopyWithImpl(_$$ItemDto _value, $Res Function(_$$ItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = freezed,
  }) {
    return _then(_$$ItemDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ItemDto implements $ItemDto {
  const _$$ItemDto({required this.id, required this.title, this.image});

  factory _$$ItemDto.fromJson(Map<String, dynamic> json) =>
      _$$$ItemDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final bool? image;

  @override
  String toString() {
    return 'ItemDto(id: $id, title: $title, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ItemDtoCopyWith<_$$ItemDto> get copyWith =>
      __$$$ItemDtoCopyWithImpl<_$$ItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$ItemDtoToJson(
      this,
    );
  }
}

abstract class $ItemDto implements ItemDto {
  const factory $ItemDto(
      {required final int id,
      required final String title,
      final bool? image}) = _$$ItemDto;

  factory $ItemDto.fromJson(Map<String, dynamic> json) = _$$ItemDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  bool? get image;
  @override
  @JsonKey(ignore: true)
  _$$$ItemDtoCopyWith<_$$ItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
