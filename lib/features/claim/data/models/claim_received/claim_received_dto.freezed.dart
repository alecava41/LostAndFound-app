// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'claim_received_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClaimReceivedDto _$ClaimReceivedDtoFromJson(Map<String, dynamic> json) {
  return $ClaimReceivedDto.fromJson(json);
}

/// @nodoc
mixin _$ClaimReceivedDto {
  int get id => throw _privateConstructorUsedError;
  ItemDto get item => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClaimReceivedDtoCopyWith<ClaimReceivedDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClaimReceivedDtoCopyWith<$Res> {
  factory $ClaimReceivedDtoCopyWith(
          ClaimReceivedDto value, $Res Function(ClaimReceivedDto) then) =
      _$ClaimReceivedDtoCopyWithImpl<$Res, ClaimReceivedDto>;
  @useResult
  $Res call(
      {int id,
      ItemDto item,
      UserDto user,
      DateTime? date,
      String? status,
      String? answer});

  $ItemDtoCopyWith<$Res> get item;
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$ClaimReceivedDtoCopyWithImpl<$Res, $Val extends ClaimReceivedDto>
    implements $ClaimReceivedDtoCopyWith<$Res> {
  _$ClaimReceivedDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? item = null,
    Object? user = null,
    Object? date = freezed,
    Object? status = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemDtoCopyWith<$Res> get item {
    return $ItemDtoCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
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
abstract class _$$$ClaimReceivedDtoCopyWith<$Res>
    implements $ClaimReceivedDtoCopyWith<$Res> {
  factory _$$$ClaimReceivedDtoCopyWith(
          _$$ClaimReceivedDto value, $Res Function(_$$ClaimReceivedDto) then) =
      __$$$ClaimReceivedDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      ItemDto item,
      UserDto user,
      DateTime? date,
      String? status,
      String? answer});

  @override
  $ItemDtoCopyWith<$Res> get item;
  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$$ClaimReceivedDtoCopyWithImpl<$Res>
    extends _$ClaimReceivedDtoCopyWithImpl<$Res, _$$ClaimReceivedDto>
    implements _$$$ClaimReceivedDtoCopyWith<$Res> {
  __$$$ClaimReceivedDtoCopyWithImpl(
      _$$ClaimReceivedDto _value, $Res Function(_$$ClaimReceivedDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? item = null,
    Object? user = null,
    Object? date = freezed,
    Object? status = freezed,
    Object? answer = freezed,
  }) {
    return _then(_$$ClaimReceivedDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as ItemDto,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ClaimReceivedDto implements $ClaimReceivedDto {
  const _$$ClaimReceivedDto(
      {required this.id,
      required this.item,
      required this.user,
      this.date,
      this.status,
      this.answer});

  factory _$$ClaimReceivedDto.fromJson(Map<String, dynamic> json) =>
      _$$$ClaimReceivedDtoFromJson(json);

  @override
  final int id;
  @override
  final ItemDto item;
  @override
  final UserDto user;
  @override
  final DateTime? date;
  @override
  final String? status;
  @override
  final String? answer;

  @override
  String toString() {
    return 'ClaimReceivedDto(id: $id, item: $item, user: $user, date: $date, status: $status, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ClaimReceivedDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, item, user, date, status, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ClaimReceivedDtoCopyWith<_$$ClaimReceivedDto> get copyWith =>
      __$$$ClaimReceivedDtoCopyWithImpl<_$$ClaimReceivedDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$ClaimReceivedDtoToJson(
      this,
    );
  }
}

abstract class $ClaimReceivedDto implements ClaimReceivedDto {
  const factory $ClaimReceivedDto(
      {required final int id,
      required final ItemDto item,
      required final UserDto user,
      final DateTime? date,
      final String? status,
      final String? answer}) = _$$ClaimReceivedDto;

  factory $ClaimReceivedDto.fromJson(Map<String, dynamic> json) =
      _$$ClaimReceivedDto.fromJson;

  @override
  int get id;
  @override
  ItemDto get item;
  @override
  UserDto get user;
  @override
  DateTime? get date;
  @override
  String? get status;
  @override
  String? get answer;
  @override
  @JsonKey(ignore: true)
  _$$$ClaimReceivedDtoCopyWith<_$$ClaimReceivedDto> get copyWith =>
      throw _privateConstructorUsedError;
}
