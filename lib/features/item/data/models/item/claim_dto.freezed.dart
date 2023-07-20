// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClaimDto _$ClaimDtoFromJson(Map<String, dynamic> json) {
  return $ClaimDto.fromJson(json);
}

/// @nodoc
mixin _$ClaimDto {
  int get id => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimDtoCopyWith<ClaimDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimDtoCopyWith<$Res> {
  factory $ClaimDtoCopyWith(ClaimDto value, $Res Function(ClaimDto) then) =
      _$ClaimDtoCopyWithImpl<$Res, ClaimDto>;
  @useResult
  $Res call(
      {int id, UserDto user, String? answer, DateTime? date, String? status});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$ClaimDtoCopyWithImpl<$Res, $Val extends ClaimDto>
    implements $ClaimDtoCopyWith<$Res> {
  _$ClaimDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? answer = freezed,
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$$ClaimDtoCopyWith<$Res> implements $ClaimDtoCopyWith<$Res> {
  factory _$$$ClaimDtoCopyWith(
          _$$ClaimDto value, $Res Function(_$$ClaimDto) then) =
      __$$$ClaimDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, UserDto user, String? answer, DateTime? date, String? status});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$$ClaimDtoCopyWithImpl<$Res>
    extends _$ClaimDtoCopyWithImpl<$Res, _$$ClaimDto>
    implements _$$$ClaimDtoCopyWith<$Res> {
  __$$$ClaimDtoCopyWithImpl(
      _$$ClaimDto _value, $Res Function(_$$ClaimDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user = null,
    Object? answer = freezed,
    Object? date = freezed,
    Object? status = freezed,
  }) {
    return _then(_$$ClaimDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ClaimDto implements $ClaimDto {
  const _$$ClaimDto(
      {required this.id,
      required this.user,
      this.answer,
      this.date,
      this.status});

  factory _$$ClaimDto.fromJson(Map<String, dynamic> json) =>
      _$$$ClaimDtoFromJson(json);

  @override
  final int id;
  @override
  final UserDto user;
  @override
  final String? answer;
  @override
  final DateTime? date;
  @override
  final String? status;

  @override
  String toString() {
    return 'ClaimDto(id: $id, user: $user, answer: $answer, date: $date, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ClaimDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, user, answer, date, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ClaimDtoCopyWith<_$$ClaimDto> get copyWith =>
      __$$$ClaimDtoCopyWithImpl<_$$ClaimDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$ClaimDtoToJson(
      this,
    );
  }
}

abstract class $ClaimDto implements ClaimDto {
  const factory $ClaimDto(
      {required final int id,
      required final UserDto user,
      final String? answer,
      final DateTime? date,
      final String? status}) = _$$ClaimDto;

  factory $ClaimDto.fromJson(Map<String, dynamic> json) = _$$ClaimDto.fromJson;

  @override
  int get id;
  @override
  UserDto get user;
  @override
  String? get answer;
  @override
  DateTime? get date;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$$ClaimDtoCopyWith<_$$ClaimDto> get copyWith =>
      throw _privateConstructorUsedError;
}
