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
  bool get resolved => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  bool? get image => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  UserDto get user => throw _privateConstructorUsedError;
  CategoryDto get category => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  PositionDto get position => throw _privateConstructorUsedError;
  List<ClaimReceivedDto>? get claims => throw _privateConstructorUsedError;
  ClaimSentDto? get userClaim => throw _privateConstructorUsedError;
  List<NewsDto>? get news => throw _privateConstructorUsedError;

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
      bool resolved,
      String title,
      String type,
      String address,
      bool? image,
      DateTime date,
      UserDto user,
      CategoryDto category,
      String? question,
      PositionDto position,
      List<ClaimReceivedDto>? claims,
      ClaimSentDto? userClaim,
      List<NewsDto>? news});

  $UserDtoCopyWith<$Res> get user;
  $CategoryDtoCopyWith<$Res> get category;
  $PositionDtoCopyWith<$Res> get position;
  $ClaimSentDtoCopyWith<$Res>? get userClaim;
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
    Object? resolved = null,
    Object? title = null,
    Object? type = null,
    Object? address = null,
    Object? image = freezed,
    Object? date = null,
    Object? user = null,
    Object? category = null,
    Object? question = freezed,
    Object? position = null,
    Object? claims = freezed,
    Object? userClaim = freezed,
    Object? news = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      resolved: null == resolved
          ? _value.resolved
          : resolved // ignore: cast_nullable_to_non_nullable
              as bool,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDto,
      claims: freezed == claims
          ? _value.claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<ClaimReceivedDto>?,
      userClaim: freezed == userClaim
          ? _value.userClaim
          : userClaim // ignore: cast_nullable_to_non_nullable
              as ClaimSentDto?,
      news: freezed == news
          ? _value.news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDto>?,
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
  $PositionDtoCopyWith<$Res> get position {
    return $PositionDtoCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value) as $Val);
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
      bool resolved,
      String title,
      String type,
      String address,
      bool? image,
      DateTime date,
      UserDto user,
      CategoryDto category,
      String? question,
      PositionDto position,
      List<ClaimReceivedDto>? claims,
      ClaimSentDto? userClaim,
      List<NewsDto>? news});

  @override
  $UserDtoCopyWith<$Res> get user;
  @override
  $CategoryDtoCopyWith<$Res> get category;
  @override
  $PositionDtoCopyWith<$Res> get position;
  @override
  $ClaimSentDtoCopyWith<$Res>? get userClaim;
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
    Object? resolved = null,
    Object? title = null,
    Object? type = null,
    Object? address = null,
    Object? image = freezed,
    Object? date = null,
    Object? user = null,
    Object? category = null,
    Object? question = freezed,
    Object? position = null,
    Object? claims = freezed,
    Object? userClaim = freezed,
    Object? news = freezed,
  }) {
    return _then(_$$ItemDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      resolved: null == resolved
          ? _value.resolved
          : resolved // ignore: cast_nullable_to_non_nullable
              as bool,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as PositionDto,
      claims: freezed == claims
          ? _value._claims
          : claims // ignore: cast_nullable_to_non_nullable
              as List<ClaimReceivedDto>?,
      userClaim: freezed == userClaim
          ? _value.userClaim
          : userClaim // ignore: cast_nullable_to_non_nullable
              as ClaimSentDto?,
      news: freezed == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<NewsDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$ItemDto implements $ItemDto {
  const _$$ItemDto(
      {required this.id,
      required this.resolved,
      required this.title,
      required this.type,
      required this.address,
      this.image,
      required this.date,
      required this.user,
      required this.category,
      required this.question,
      required this.position,
      final List<ClaimReceivedDto>? claims,
      this.userClaim,
      final List<NewsDto>? news})
      : _claims = claims,
        _news = news;

  factory _$$ItemDto.fromJson(Map<String, dynamic> json) =>
      _$$$ItemDtoFromJson(json);

  @override
  final int id;
  @override
  final bool resolved;
  @override
  final String title;
  @override
  final String type;
  @override
  final String address;
  @override
  final bool? image;
  @override
  final DateTime date;
  @override
  final UserDto user;
  @override
  final CategoryDto category;
  @override
  final String? question;
  @override
  final PositionDto position;
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
  final List<NewsDto>? _news;
  @override
  List<NewsDto>? get news {
    final value = _news;
    if (value == null) return null;
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ItemDto(id: $id, resolved: $resolved, title: $title, type: $type, address: $address, image: $image, date: $date, user: $user, category: $category, question: $question, position: $position, claims: $claims, userClaim: $userClaim, news: $news)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$ItemDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.resolved, resolved) ||
                other.resolved == resolved) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.position, position) ||
                other.position == position) &&
            const DeepCollectionEquality().equals(other._claims, _claims) &&
            (identical(other.userClaim, userClaim) ||
                other.userClaim == userClaim) &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      resolved,
      title,
      type,
      address,
      image,
      date,
      user,
      category,
      question,
      position,
      const DeepCollectionEquality().hash(_claims),
      userClaim,
      const DeepCollectionEquality().hash(_news));

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
      required final bool resolved,
      required final String title,
      required final String type,
      required final String address,
      final bool? image,
      required final DateTime date,
      required final UserDto user,
      required final CategoryDto category,
      required final String? question,
      required final PositionDto position,
      final List<ClaimReceivedDto>? claims,
      final ClaimSentDto? userClaim,
      final List<NewsDto>? news}) = _$$ItemDto;

  factory $ItemDto.fromJson(Map<String, dynamic> json) = _$$ItemDto.fromJson;

  @override
  int get id;
  @override
  bool get resolved;
  @override
  String get title;
  @override
  String get type;
  @override
  String get address;
  @override
  bool? get image;
  @override
  DateTime get date;
  @override
  UserDto get user;
  @override
  CategoryDto get category;
  @override
  String? get question;
  @override
  PositionDto get position;
  @override
  List<ClaimReceivedDto>? get claims;
  @override
  ClaimSentDto? get userClaim;
  @override
  List<NewsDto>? get news;
  @override
  @JsonKey(ignore: true)
  _$$$ItemDtoCopyWith<_$$ItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
