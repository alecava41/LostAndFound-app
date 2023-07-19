import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_dto.freezed.dart';
part 'category_dto.g.dart';

@freezed
class CategoryDto with _$CategoryDto {
  const factory CategoryDto({
    required int id,
    required String name,
    required int icon
  }) = $CategoryDto;

  factory CategoryDto.fromJson(Map<String,dynamic> data) => _$CategoryDtoFromJson(data);
}