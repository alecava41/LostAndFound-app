// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsInfoDto _$NewsInfoDtoFromJson(Map<String, dynamic> json) {
  return $NewsInfoDto.fromJson(json);
}

/// @nodoc
mixin _$NewsInfoDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsInfoDtoCopyWith<NewsInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsInfoDtoCopyWith<$Res> {
  factory $NewsInfoDtoCopyWith(
          NewsInfoDto value, $Res Function(NewsInfoDto) then) =
      _$NewsInfoDtoCopyWithImpl<$Res, NewsInfoDto>;
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class _$NewsInfoDtoCopyWithImpl<$Res, $Val extends NewsInfoDto>
    implements $NewsInfoDtoCopyWith<$Res> {
  _$NewsInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$NewsInfoDtoCopyWith<$Res>
    implements $NewsInfoDtoCopyWith<$Res> {
  factory _$$$NewsInfoDtoCopyWith(
          _$$NewsInfoDto value, $Res Function(_$$NewsInfoDto) then) =
      __$$$NewsInfoDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title});
}

/// @nodoc
class __$$$NewsInfoDtoCopyWithImpl<$Res>
    extends _$NewsInfoDtoCopyWithImpl<$Res, _$$NewsInfoDto>
    implements _$$$NewsInfoDtoCopyWith<$Res> {
  __$$$NewsInfoDtoCopyWithImpl(
      _$$NewsInfoDto _value, $Res Function(_$$NewsInfoDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
  }) {
    return _then(_$$NewsInfoDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$NewsInfoDto implements $NewsInfoDto {
  const _$$NewsInfoDto({required this.id, required this.title});

  factory _$$NewsInfoDto.fromJson(Map<String, dynamic> json) =>
      _$$$NewsInfoDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;

  @override
  String toString() {
    return 'NewsInfoDto(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$NewsInfoDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$NewsInfoDtoCopyWith<_$$NewsInfoDto> get copyWith =>
      __$$$NewsInfoDtoCopyWithImpl<_$$NewsInfoDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$NewsInfoDtoToJson(
      this,
    );
  }
}

abstract class $NewsInfoDto implements NewsInfoDto {
  const factory $NewsInfoDto(
      {required final int id, required final String title}) = _$$NewsInfoDto;

  factory $NewsInfoDto.fromJson(Map<String, dynamic> json) =
      _$$NewsInfoDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$$NewsInfoDtoCopyWith<_$$NewsInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}
