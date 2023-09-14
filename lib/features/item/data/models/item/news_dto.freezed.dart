// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NewsDto _$NewsDtoFromJson(Map<String, dynamic> json) {
  return $NewsDto.fromJson(json);
}

/// @nodoc
mixin _$NewsDto {
  int get id => throw _privateConstructorUsedError;
  NewsInfoDto get target => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDtoCopyWith<NewsDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDtoCopyWith<$Res> {
  factory $NewsDtoCopyWith(NewsDto value, $Res Function(NewsDto) then) =
      _$NewsDtoCopyWithImpl<$Res, NewsDto>;
  @useResult
  $Res call({int id, NewsInfoDto target});

  $NewsInfoDtoCopyWith<$Res> get target;
}

/// @nodoc
class _$NewsDtoCopyWithImpl<$Res, $Val extends NewsDto>
    implements $NewsDtoCopyWith<$Res> {
  _$NewsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? target = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as NewsInfoDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewsInfoDtoCopyWith<$Res> get target {
    return $NewsInfoDtoCopyWith<$Res>(_value.target, (value) {
      return _then(_value.copyWith(target: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$NewsDtoCopyWith<$Res> implements $NewsDtoCopyWith<$Res> {
  factory _$$$NewsDtoCopyWith(
          _$$NewsDto value, $Res Function(_$$NewsDto) then) =
      __$$$NewsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, NewsInfoDto target});

  @override
  $NewsInfoDtoCopyWith<$Res> get target;
}

/// @nodoc
class __$$$NewsDtoCopyWithImpl<$Res>
    extends _$NewsDtoCopyWithImpl<$Res, _$$NewsDto>
    implements _$$$NewsDtoCopyWith<$Res> {
  __$$$NewsDtoCopyWithImpl(_$$NewsDto _value, $Res Function(_$$NewsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? target = null,
  }) {
    return _then(_$$NewsDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      target: null == target
          ? _value.target
          : target // ignore: cast_nullable_to_non_nullable
              as NewsInfoDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$NewsDto implements $NewsDto {
  const _$$NewsDto({required this.id, required this.target});

  factory _$$NewsDto.fromJson(Map<String, dynamic> json) =>
      _$$$NewsDtoFromJson(json);

  @override
  final int id;
  @override
  final NewsInfoDto target;

  @override
  String toString() {
    return 'NewsDto(id: $id, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$NewsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, target);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$NewsDtoCopyWith<_$$NewsDto> get copyWith =>
      __$$$NewsDtoCopyWithImpl<_$$NewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$NewsDtoToJson(
      this,
    );
  }
}

abstract class $NewsDto implements NewsDto {
  const factory $NewsDto(
      {required final int id, required final NewsInfoDto target}) = _$$NewsDto;

  factory $NewsDto.fromJson(Map<String, dynamic> json) = _$$NewsDto.fromJson;

  @override
  int get id;
  @override
  NewsInfoDto get target;
  @override
  @JsonKey(ignore: true)
  _$$$NewsDtoCopyWith<_$$NewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
