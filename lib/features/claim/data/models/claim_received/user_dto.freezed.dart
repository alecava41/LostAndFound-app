// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDto _$UserDtoFromJson(Map<String, dynamic> json) {
  return $UserDto.fromJson(json);
}

/// @nodoc
mixin _$UserDto {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDtoCopyWith<UserDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDtoCopyWith<$Res> {
  factory $UserDtoCopyWith(UserDto value, $Res Function(UserDto) then) =
      _$UserDtoCopyWithImpl<$Res, UserDto>;
  @useResult
  $Res call({int id, String username, bool? image});
}

/// @nodoc
class _$UserDtoCopyWithImpl<$Res, $Val extends UserDto>
    implements $UserDtoCopyWith<$Res> {
  _$UserDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$UserDtoCopyWith<$Res> implements $UserDtoCopyWith<$Res> {
  factory _$$$UserDtoCopyWith(
          _$$UserDto value, $Res Function(_$$UserDto) then) =
      __$$$UserDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String username, bool? image});
}

/// @nodoc
class __$$$UserDtoCopyWithImpl<$Res>
    extends _$UserDtoCopyWithImpl<$Res, _$$UserDto>
    implements _$$$UserDtoCopyWith<$Res> {
  __$$$UserDtoCopyWithImpl(_$$UserDto _value, $Res Function(_$$UserDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? image = freezed,
  }) {
    return _then(_$$UserDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
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
class _$$UserDto implements $UserDto {
  const _$$UserDto({required this.id, required this.username, this.image});

  factory _$$UserDto.fromJson(Map<String, dynamic> json) =>
      _$$$UserDtoFromJson(json);

  @override
  final int id;
  @override
  final String username;
  @override
  final bool? image;

  @override
  String toString() {
    return 'UserDto(id: $id, username: $username, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UserDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UserDtoCopyWith<_$$UserDto> get copyWith =>
      __$$$UserDtoCopyWithImpl<_$$UserDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$UserDtoToJson(
      this,
    );
  }
}

abstract class $UserDto implements UserDto {
  const factory $UserDto(
      {required final int id,
      required final String username,
      final bool? image}) = _$$UserDto;

  factory $UserDto.fromJson(Map<String, dynamic> json) = _$$UserDto.fromJson;

  @override
  int get id;
  @override
  String get username;
  @override
  bool? get image;
  @override
  @JsonKey(ignore: true)
  _$$$UserDtoCopyWith<_$$UserDto> get copyWith =>
      throw _privateConstructorUsedError;
}
