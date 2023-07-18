// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TargetDto _$TargetDtoFromJson(Map<String, dynamic> json) {
  return $TargetDto.fromJson(json);
}

/// @nodoc
mixin _$TargetDto {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TargetDtoCopyWith<TargetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDtoCopyWith<$Res> {
  factory $TargetDtoCopyWith(TargetDto value, $Res Function(TargetDto) then) =
      _$TargetDtoCopyWithImpl<$Res, TargetDto>;
  @useResult
  $Res call({int id, String? title, UserDto user});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$TargetDtoCopyWithImpl<$Res, $Val extends TargetDto>
    implements $TargetDtoCopyWith<$Res> {
  _$TargetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$TargetDtoCopyWith<$Res> implements $TargetDtoCopyWith<$Res> {
  factory _$$$TargetDtoCopyWith(
          _$$TargetDto value, $Res Function(_$$TargetDto) then) =
      __$$$TargetDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? title, UserDto user});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$$TargetDtoCopyWithImpl<$Res>
    extends _$TargetDtoCopyWithImpl<$Res, _$$TargetDto>
    implements _$$$TargetDtoCopyWith<$Res> {
  __$$$TargetDtoCopyWithImpl(
      _$$TargetDto _value, $Res Function(_$$TargetDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? user = null,
  }) {
    return _then(_$$TargetDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$TargetDto implements $TargetDto {
  const _$$TargetDto({required this.id, this.title, required this.user});

  factory _$$TargetDto.fromJson(Map<String, dynamic> json) =>
      _$$$TargetDtoFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final UserDto user;

  @override
  String toString() {
    return 'TargetDto(id: $id, title: $title, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TargetDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$TargetDtoCopyWith<_$$TargetDto> get copyWith =>
      __$$$TargetDtoCopyWithImpl<_$$TargetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$TargetDtoToJson(
      this,
    );
  }
}

abstract class $TargetDto implements TargetDto {
  const factory $TargetDto(
      {required final int id,
      final String? title,
      required final UserDto user}) = _$$TargetDto;

  factory $TargetDto.fromJson(Map<String, dynamic> json) =
      _$$TargetDto.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  UserDto get user;
  @override
  @JsonKey(ignore: true)
  _$$$TargetDtoCopyWith<_$$TargetDto> get copyWith =>
      throw _privateConstructorUsedError;
}
