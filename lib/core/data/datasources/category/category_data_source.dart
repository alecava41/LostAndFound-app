import 'package:lost_and_found/core/domain/usecases/usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import 'client/category_client.dart';
import 'models/category_dto.dart';

abstract class CategoryDataSource {
  Future<List<CategoryDto>> getCategories(NoParams params);
}

class CategoryDataSourceImpl implements CategoryDataSource {
  final CategoryClient _client;

  CategoryDataSourceImpl(this._client);

  @override
  Future<List<CategoryDto>> getCategories(NoParams params) {
    return _client.getCategories().catchError(handleError<List<CategoryDto>>);
  }
}