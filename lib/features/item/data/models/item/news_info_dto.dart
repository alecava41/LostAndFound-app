import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_info_dto.freezed.dart';
part 'news_info_dto.g.dart';

@freezed
class NewsInfoDto with _$NewsInfoDto {
  const factory NewsInfoDto({
    required int id,
    required String title,
  }) = $NewsInfoDto;

  factory NewsInfoDto.fromJson(Map<String, dynamic> data) => _$NewsInfoDtoFromJson(data);
}