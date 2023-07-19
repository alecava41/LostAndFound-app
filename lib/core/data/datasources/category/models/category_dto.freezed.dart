// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoryDto _$CategoryDtoFromJson(Map<String, dynamic> json) {
  return $CategoryDto.fromJson(json);
}

/// @nodoc
mixin _$CategoryDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryDtoCopyWith<CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryDtoCopyWith<$Res> {
  factory $CategoryDtoCopyWith(
          CategoryDto value, $Res Function(CategoryDto) then) =
      _$CategoryDtoCopyWithImpl<$Res, CategoryDto>;
  @useResult
  $Res call({int id, String name, int icon});
}

/// @nodoc
class _$CategoryDtoCopyWithImpl<$Res, $Val extends CategoryDto>
    implements $CategoryDtoCopyWith<$Res> {
  _$CategoryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$CategoryDtoCopyWith<$Res>
    implements $CategoryDtoCopyWith<$Res> {
  factory _$$$CategoryDtoCopyWith(
          _$$CategoryDto value, $Res Function(_$$CategoryDto) then) =
      __$$$CategoryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int icon});
}

/// @nodoc
class __$$$CategoryDtoCopyWithImpl<$Res>
    extends _$CategoryDtoCopyWithImpl<$Res, _$$CategoryDto>
    implements _$$$CategoryDtoCopyWith<$Res> {
  __$$$CategoryDtoCopyWithImpl(
      _$$CategoryDto _value, $Res Function(_$$CategoryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
  }) {
    return _then(_$$CategoryDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$CategoryDto implements $CategoryDto {
  const _$$CategoryDto(
      {required this.id, required this.name, required this.icon});

  factory _$$CategoryDto.fromJson(Map<String, dynamic> json) =>
      _$$$CategoryDtoFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int icon;

  @override
  String toString() {
    return 'CategoryDto(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$CategoryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$CategoryDtoCopyWith<_$$CategoryDto> get copyWith =>
      __$$$CategoryDtoCopyWithImpl<_$$CategoryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$CategoryDtoToJson(
      this,
    );
  }
}

abstract class $CategoryDto implements CategoryDto {
  const factory $CategoryDto(
      {required final int id,
      required final String name,
      required final int icon}) = _$$CategoryDto;

  factory $CategoryDto.fromJson(Map<String, dynamic> json) =
      _$$CategoryDto.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get icon;
  @override
  @JsonKey(ignore: true)
  _$$$CategoryDtoCopyWith<_$$CategoryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
