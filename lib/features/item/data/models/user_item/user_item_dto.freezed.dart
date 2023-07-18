// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserItemDto _$UserItemDtoFromJson(Map<String, dynamic> json) {
  return $UserItemDto.fromJson(json);
}

/// @nodoc
mixin _$UserItemDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get claims => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserItemDtoCopyWith<UserItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserItemDtoCopyWith<$Res> {
  factory $UserItemDtoCopyWith(
          UserItemDto value, $Res Function(UserItemDto) then) =
      _$UserItemDtoCopyWithImpl<$Res, UserItemDto>;
  @useResult
  $Res call({int id, String title, int claims});
}

/// @nodoc
class _$UserItemDtoCopyWithImpl<$Res, $Val extends UserItemDto>
    implements $UserItemDtoCopyWith<$Res> {
  _$UserItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? claims = null,
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
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$UserItemDtoCopyWith<$Res>
    implements $UserItemDtoCopyWith<$Res> {
  factory _$$$UserItemDtoCopyWith(
          _$$UserItemDto value, $Res Function(_$$UserItemDto) then) =
      __$$$UserItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, int claims});
}

/// @nodoc
class __$$$UserItemDtoCopyWithImpl<$Res>
    extends _$UserItemDtoCopyWithImpl<$Res, _$$UserItemDto>
    implements _$$$UserItemDtoCopyWith<$Res> {
  __$$$UserItemDtoCopyWithImpl(
      _$$UserItemDto _value, $Res Function(_$$UserItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? claims = null,
  }) {
    return _then(_$$UserItemDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      claims: null == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$UserItemDto implements $UserItemDto {
  const _$$UserItemDto(
      {required this.id, required this.title, required this.claims});

  factory _$$UserItemDto.fromJson(Map<String, dynamic> json) =>
      _$$$UserItemDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final int claims;

  @override
  String toString() {
    return 'UserItemDto(id: $id, title: $title, claims: $claims)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$UserItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.claims, claims) || other.claims == claims));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, claims);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$UserItemDtoCopyWith<_$$UserItemDto> get copyWith =>
      __$$$UserItemDtoCopyWithImpl<_$$UserItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$UserItemDtoToJson(
      this,
    );
  }
}

abstract class $UserItemDto implements UserItemDto {
  const factory $UserItemDto(
      {required final int id,
      required final String title,
      required final int claims}) = _$$UserItemDto;

  factory $UserItemDto.fromJson(Map<String, dynamic> json) =
      _$$UserItemDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  int get claims;
  @override
  @JsonKey(ignore: true)
  _$$$UserItemDtoCopyWith<_$$UserItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
