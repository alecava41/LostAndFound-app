import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../models/category_dto.dart';


part 'category_client.g.dart';

@RestApi(baseUrl: "http://localhost:5000/api/categories")
abstract class CategoryClient {
  factory CategoryClient(Dio dio, {String baseUrl}) = _CategoryClient;

  @GET('')
  Future<List<CategoryDto>> getCategories();
}
