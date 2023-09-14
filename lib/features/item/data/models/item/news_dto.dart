import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_info_dto.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDto with _$NewsDto {
  const factory NewsDto({
    required int id,
    required NewsInfoDto target,
  }) = $NewsDto;

  factory NewsDto.fromJson(Map<String, dynamic> data) => _$NewsDtoFromJson(data);
}