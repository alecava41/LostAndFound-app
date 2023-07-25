// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_sent_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClaimSentDto _$ClaimSentDtoFromJson(Map<String, dynamic> json) {
  return $ClaimSentDto.fromJson(json);
}

/// @nodoc
mixin _$ClaimSentDto {
  int get id => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimSentDtoCopyWith<ClaimSentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimSentDtoCopyWith<$Res> {
  factory $ClaimSentDtoCopyWith(
          ClaimSentDto value, $Res Function(ClaimSentDto) then) =
      _$ClaimSentDtoCopyWithImpl<$Res, ClaimSentDto>;
  @useResult
  $Res call({int id, String status, String? answer, DateTime? date});
}

/// @nodoc
class _$ClaimSentDtoCopyWithImpl<$Res, $Val extends ClaimSentDto>
    implements $ClaimSentDtoCopyWith<$Res> {
  _$ClaimSentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? answer = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$ClaimSentDtoCopyWith<$Res>
    implements $ClaimSentDtoCopyWith<$Res> {
  factory _$$$ClaimSentDtoCopyWith(
          _$$ClaimSentDto value, $Res Function(_$$ClaimSentDto) then) =
      __$$$ClaimSentDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String status, String? answer, DateTime? date});
}

/// @nodoc
class __$$$ClaimSentDtoCopyWithImpl<$Res>
    extends _$ClaimSentDtoCopyWithImpl<$Res, _$$ClaimSentDto>
    implements _$$$ClaimSentDtoCopyWith<$Res> {
  __$$$ClaimSentDtoCopyWithImpl(
      _$$ClaimSentDto _value, $Res Function(_$$ClaimSentDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? status = null,
    Object? answer = freezed,
    Object? date = freezed,
  }) {
    return _then(_$$ClaimSentDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ClaimSentDto implements $ClaimSentDto {
  const _$$ClaimSentDto(
      {required this.id, required this.status, this.answer, this.date});

  factory _$$ClaimSentDto.fromJson(Map<String, dynamic> json) =>
      _$$$ClaimSentDtoFromJson(json);

  @override
  final int id;
  @override
  final String status;
  @override
  final String? answer;
  @override
  final DateTime? date;

  @override
  String toString() {
    return 'ClaimSentDto(id: $id, status: $status, answer: $answer, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ClaimSentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, status, answer, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ClaimSentDtoCopyWith<_$$ClaimSentDto> get copyWith =>
      __$$$ClaimSentDtoCopyWithImpl<_$$ClaimSentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$ClaimSentDtoToJson(
      this,
    );
  }
}

abstract class $ClaimSentDto implements ClaimSentDto {
  const factory $ClaimSentDto(
      {required final int id,
      required final String status,
      final String? answer,
      final DateTime? date}) = _$$ClaimSentDto;

  factory $ClaimSentDto.fromJson(Map<String, dynamic> json) =
      _$$ClaimSentDto.fromJson;

  @override
  int get id;
  @override
  String get status;
  @override
  String? get answer;
  @override
  DateTime? get date;
  @override
  @JsonKey(ignore: true)
  _$$$ClaimSentDtoCopyWith<_$$ClaimSentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
