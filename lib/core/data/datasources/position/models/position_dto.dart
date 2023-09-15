import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_dto.freezed.dart';
part 'position_dto.g.dart';

@freezed
class PositionDto with _$PositionDto {
  const factory PositionDto({
    required double lat,
    required double lon,
  }) = $PositionDto;

  factory PositionDto.fromJson(Map<String,dynamic> data) => _$PositionDtoFromJson(data);
}