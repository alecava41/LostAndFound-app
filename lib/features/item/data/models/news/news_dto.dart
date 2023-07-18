import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/data/models/news/subject_dto.dart';
import 'package:lost_and_found/features/item/data/models/news/target_dto.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDto with _$NewsDto {
  const factory NewsDto({
    required int id,
    required String datetime,
    required SubjectDto subject,
    required TargetDto target
  }) = $NewsDto;

  factory NewsDto.fromJson(Map<String, dynamic> data) => _$NewsDtoFromJson(data);

}