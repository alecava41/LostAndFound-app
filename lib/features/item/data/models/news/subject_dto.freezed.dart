// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subject_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectDto _$SubjectDtoFromJson(Map<String, dynamic> json) {
  return $SubjectDto.fromJson(json);
}

/// @nodoc
mixin _$SubjectDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectDtoCopyWith<SubjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectDtoCopyWith<$Res> {
  factory $SubjectDtoCopyWith(
          SubjectDto value, $Res Function(SubjectDto) then) =
      _$SubjectDtoCopyWithImpl<$Res, SubjectDto>;
  @useResult
  $Res call({int id, String title, String type});
}

/// @nodoc
class _$SubjectDtoCopyWithImpl<$Res, $Val extends SubjectDto>
    implements $SubjectDtoCopyWith<$Res> {
  _$SubjectDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$SubjectDtoCopyWith<$Res>
    implements $SubjectDtoCopyWith<$Res> {
  factory _$$$SubjectDtoCopyWith(
          _$$SubjectDto value, $Res Function(_$$SubjectDto) then) =
      __$$$SubjectDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String type});
}

/// @nodoc
class __$$$SubjectDtoCopyWithImpl<$Res>
    extends _$SubjectDtoCopyWithImpl<$Res, _$$SubjectDto>
    implements _$$$SubjectDtoCopyWith<$Res> {
  __$$$SubjectDtoCopyWithImpl(
      _$$SubjectDto _value, $Res Function(_$$SubjectDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
  }) {
    return _then(_$$SubjectDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$SubjectDto implements $SubjectDto {
  const _$$SubjectDto(
      {required this.id, required this.title, required this.type});

  factory _$$SubjectDto.fromJson(Map<String, dynamic> json) =>
      _$$$SubjectDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String type;

  @override
  String toString() {
    return 'SubjectDto(id: $id, title: $title, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$SubjectDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$SubjectDtoCopyWith<_$$SubjectDto> get copyWith =>
      __$$$SubjectDtoCopyWithImpl<_$$SubjectDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$SubjectDtoToJson(
      this,
    );
  }
}

abstract class $SubjectDto implements SubjectDto {
  const factory $SubjectDto(
      {required final int id,
      required final String title,
      required final String type}) = _$$SubjectDto;

  factory $SubjectDto.fromJson(Map<String, dynamic> json) =
      _$$SubjectDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$$SubjectDtoCopyWith<_$$SubjectDto> get copyWith =>
      throw _privateConstructorUsedError;
}
