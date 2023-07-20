// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'position_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PositionDto _$PositionDtoFromJson(Map<String, dynamic> json) {
  return $PositionDto.fromJson(json);
}

/// @nodoc
mixin _$PositionDto {
  double get X => throw _privateConstructorUsedError;
  double get Y => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PositionDtoCopyWith<PositionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionDtoCopyWith<$Res> {
  factory $PositionDtoCopyWith(
          PositionDto value, $Res Function(PositionDto) then) =
      _$PositionDtoCopyWithImpl<$Res, PositionDto>;
  @useResult
  $Res call({double X, double Y});
}

/// @nodoc
class _$PositionDtoCopyWithImpl<$Res, $Val extends PositionDto>
    implements $PositionDtoCopyWith<$Res> {
  _$PositionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? X = null,
    Object? Y = null,
  }) {
    return _then(_value.copyWith(
      X: null == X
          ? _value.X
          : X // ignore: cast_nullable_to_non_nullable
              as double,
      Y: null == Y
          ? _value.Y
          : Y // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$PositionDtoCopyWith<$Res>
    implements $PositionDtoCopyWith<$Res> {
  factory _$$$PositionDtoCopyWith(
          _$$PositionDto value, $Res Function(_$$PositionDto) then) =
      __$$$PositionDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double X, double Y});
}

/// @nodoc
class __$$$PositionDtoCopyWithImpl<$Res>
    extends _$PositionDtoCopyWithImpl<$Res, _$$PositionDto>
    implements _$$$PositionDtoCopyWith<$Res> {
  __$$$PositionDtoCopyWithImpl(
      _$$PositionDto _value, $Res Function(_$$PositionDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? X = null,
    Object? Y = null,
  }) {
    return _then(_$$PositionDto(
      X: null == X
          ? _value.X
          : X // ignore: cast_nullable_to_non_nullable
              as double,
      Y: null == Y
          ? _value.Y
          : Y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$PositionDto implements $PositionDto {
  const _$$PositionDto({required this.X, required this.Y});

  factory _$$PositionDto.fromJson(Map<String, dynamic> json) =>
      _$$$PositionDtoFromJson(json);

  @override
  final double X;
  @override
  final double Y;

  @override
  String toString() {
    return 'PositionDto(X: $X, Y: $Y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$PositionDto &&
            (identical(other.X, X) || other.X == X) &&
            (identical(other.Y, Y) || other.Y == Y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, X, Y);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$$PositionDtoCopyWith<_$$PositionDto> get copyWith =>
      __$$$PositionDtoCopyWithImpl<_$$PositionDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$PositionDtoToJson(
      this,
    );
  }
}

abstract class $PositionDto implements PositionDto {
  const factory $PositionDto(
      {required final double X, required final double Y}) = _$$PositionDto;

  factory $PositionDto.fromJson(Map<String, dynamic> json) =
      _$$PositionDto.fromJson;

  @override
  double get X;
  @override
  double get Y;
  @override
  @JsonKey(ignore: true)
  _$$$PositionDtoCopyWith<_$$PositionDto> get copyWith =>
      throw _privateConstructorUsedError;
}
