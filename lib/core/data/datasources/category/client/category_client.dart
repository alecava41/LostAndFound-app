import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../../../utils/constants.dart';
import '../models/category_dto.dart';


part 'category_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api/categories")
abstract class CategoryClient {
  factory CategoryClient(Dio dio, {String baseUrl}) = _CategoryClient;

  @GET('')
  Future<List<CategoryDto>> getCategories();
}
