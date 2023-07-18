import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject_dto.freezed.dart';
part 'subject_dto.g.dart';

@freezed
class SubjectDto with _$SubjectDto {
  const factory SubjectDto({
    required int id,
    required String title,
    required String type,
  }) = $SubjectDto;

  factory SubjectDto.fromJson(Map<String,dynamic> data) => _$SubjectDtoFromJson(data);
}