// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItemDto _$ItemDtoFromJson(Map<String, dynamic> json) {
  return $ItemDto.fromJson(json);
}

/// @nodoc
mixin _$ItemDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  CategoryDto get category => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  List<ClaimReceivedDto>? get claims => throw _privateConstructorUsedError;
  ClaimSentDto? get userClaim => throw _privateConstructorUsedError;
  PositionDto? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemDtoCopyWith<ItemDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemDtoCopyWith<$Res> {
  factory $ItemDtoCopyWith(ItemDto value, $Res Function(ItemDto) then) =
      _$ItemDtoCopyWithImpl<$Res, ItemDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String type,
      String address,
      DateTime date,
      UserDto user,
      CategoryDto category,
      String? question,
      List<ClaimReceivedDto>? claims,
      ClaimSentDto? userClaim,
      PositionDto? position});

  $UserDtoCopyWith<$Res> get user;
  $CategoryDtoCopyWith<$Res> get category;
  $ClaimSentDtoCopyWith<$Res>? get userClaim;
  $PositionDtoCopyWith<$Res>? get position;
}

/// @nodoc
class _$ItemDtoCopyWithImpl<$Res, $Val extends ItemDto>
    implements $ItemDtoCopyWith<$Res> {
  _$ItemDtoCopyWithImpl(this._value, this._then);

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
    Object? address = null,
    Object? date = null,
    Object? user = null,
    Object? category = null,
    Object? question = freezed,
    Object? claims = freezed,
    Object? userClaim = freezed,
    Object? position = freezed,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      claims: freezed == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<ClaimReceivedDto>?,
      userClaim: freezed == userClaim
          ? _value.userClaim
          : userClaim // ignore: cast_nullable_to_non_nullable
              as ClaimSentDto?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryDtoCopyWith<$Res> get category {
    return $CategoryDtoCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClaimSentDtoCopyWith<$Res>? get userClaim {
    if (_value.userClaim == null) {
      return null;
    }

    return $ClaimSentDtoCopyWith<$Res>(_value.userClaim!, (value) {
      return _then(_value.copyWith(userClaim: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PositionDtoCopyWith<$Res>? get position {
    if (_value.position == null) {
      return null;
    }

    return $PositionDtoCopyWith<$Res>(_value.position!, (value) {
      return _then(_value.copyWith(position: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$$ItemDtoCopyWith<$Res> implements $ItemDtoCopyWith<$Res> {
  factory _$$$ItemDtoCopyWith(
          _$$ItemDto value, $Res Function(_$$ItemDto) then) =
      __$$$ItemDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String type,
      String address,
      DateTime date,
      UserDto user,
      CategoryDto category,
      String? question,
      List<ClaimReceivedDto>? claims,
      ClaimSentDto? userClaim,
      PositionDto? position});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $CategoryDtoCopyWith<$Res> get category;
  @override
  $ClaimSentDtoCopyWith<$Res>? get userClaim;
  @override
  $PositionDtoCopyWith<$Res>? get position;
}

/// @nodoc
class __$$$ItemDtoCopyWithImpl<$Res>
    extends _$ItemDtoCopyWithImpl<$Res, _$$ItemDto>
    implements _$$$ItemDtoCopyWith<$Res> {
  __$$$ItemDtoCopyWithImpl(_$$ItemDto _value, $Res Function(_$$ItemDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? address = null,
    Object? date = null,
    Object? user = null,
    Object? category = null,
    Object? question = freezed,
    Object? claims = freezed,
    Object? userClaim = freezed,
    Object? position = freezed,
  }) {
    return _then(_$$ItemDto(
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryDto,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      claims: freezed == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<ClaimReceivedDto>?,
      userClaim: freezed == userClaim
          ? _value.userClaim
          : userClaim // ignore: cast_nullable_to_non_nullable
              as ClaimSentDto?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ItemDto implements $ItemDto {
  const _$$ItemDto(
      {required this.id,
      required this.title,
      required this.type,
      required this.address,
      required this.date,
      required this.user,
      required this.category,
      required this.question,
      final List<ClaimReceivedDto>? claims,
      this.userClaim,
      this.position})
      : _claims = claims;

  factory _$$ItemDto.fromJson(Map<String, dynamic> json) =>
      _$$$ItemDtoFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String address;
  @override
  final DateTime date;
  @override
  final UserDto user;
  @override
  final CategoryDto category;
  @override
  final String? question;
  final List<ClaimReceivedDto>? _claims;
  @override
  List<ClaimReceivedDto>? get claims {
    final value = _claims;
    if (value == null) return null;
    if (_claims is EqualUnmodifiableListView) return _claims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClaimSentDto? userClaim;
  @override
  final PositionDto? position;

  @override
  String toString() {
    return 'ItemDto(id: $id, title: $title, type: $type, address: $address, date: $date, user: $user, category: $category, question: $question, claims: $claims, userClaim: $userClaim, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._claims, _claims) &&
            (identical(other.userClaim, userClaim) ||
                other.userClaim == userClaim) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      type,
      address,
      date,
      user,
      category,
      question,
      const DeepCollectionEquality().hash(_claims),
      userClaim,
      position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$ItemDtoCopyWith<_$$ItemDto> get copyWith =>
      __$$$ItemDtoCopyWithImpl<_$$ItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$ItemDtoToJson(
      this,
    );
  }
}

abstract class $ItemDto implements ItemDto {
  const factory $ItemDto(
      {required final int id,
      required final String title,
      required final String type,
      required final String address,
      required final DateTime date,
      required final UserDto user,
      required final CategoryDto category,
      required final String? question,
      final List<ClaimReceivedDto>? claims,
      final ClaimSentDto? userClaim,
      final PositionDto? position}) = _$$ItemDto;

  factory $ItemDto.fromJson(Map<String, dynamic> json) = _$$ItemDto.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get type;
  @override
  String get address;
  @override
  DateTime get date;
  @override
  UserDto get user;
  @override
  CategoryDto get category;
  @override
  String? get question;
  @override
  List<ClaimReceivedDto>? get claims;
  @override
  ClaimSentDto? get userClaim;
  @override
  PositionDto? get position;
  @override
  @JsonKey(ignore: true)
  _$$$ItemDtoCopyWith<_$$ItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
