import 'package:lost_and_found/core/data/datasources/category/models/category_dto.dart';
import 'package:lost_and_found/core/domain/entities/category.dart';

extension CategoryFromDto on CategoryDto {
  Category toDomain() {
    return Category(id: id, name: name, icon: icon, description: description);
  }
}
