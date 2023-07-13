import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/data/models/news/user_dto.dart';

part 'target_dto.freezed.dart';
part 'target_dto.g.dart';

@freezed
class TargetDto with _$TargetDto {
  const factory TargetDto({
    required int id,
    String? title,
    required UserDto user,
  }) = $TargetDto;

  factory TargetDto.fromJson(Map<String,dynamic> data) => _$TargetDtoFromJson(data);
}