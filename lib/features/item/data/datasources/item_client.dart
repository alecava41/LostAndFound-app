import 'dart:io';

import 'package:dio/dio.dart';
import 'package:lost_and_found/features/item/data/models/insert_item/item_response_dto.dart';
import 'package:lost_and_found/features/item/domain/usecases/create_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/update_item_usecase.dart';
import 'package:retrofit/http.dart';

import '../../../../utils/constants.dart';
import '../models/item/item_dto.dart';
import '../models/news/news_dto.dart';
import '../models/search_item/search_item_dto.dart';
import '../models/user_item/user_item_dto.dart';

part 'item_client.g.dart';

@RestApi(baseUrl: "$baseUrl/api")
abstract class ItemClient {
  factory ItemClient(Dio dio, {String baseUrl}) = _ItemClient;

  @GET('/users/items')
  Future<List<UserItemDto>> getUserItems(
    @Query("type") String type,
  );

  @GET('/users/items/news')
  Future<List<NewsDto>> getNews({@Query("model") String model = "all"});

  @GET('/items')
  Future<List<SearchItemDto>> getItems(@Query("type") String type, @Query("X") double X, @Query("Y") double Y,
      @Query("range") int range, @Query("category") int category, @Query("after") DateTime? date);

  @GET('/items/{itemId}')
  Future<ItemDto> getItem(
    @Path("itemId") int id,
  );

  @POST('/users/items')
  Future<ItemResponseDto> createItem(
    @Body() CreateItemParams params,
  );

  @POST('/users/items/{itemId}/image')
  @MultiPart()
  Future<void> uploadItemImage(
    @Path("itemId") int itemId,
    @Part() File image,
  );

  @PATCH('/users/items/{itemId}/status')
  Future<void> solveItem(
    @Path("itemId") int itemId,
  );

  @DELETE('/users/items/{itemId}')
  Future<void> deleteItem(
    @Path("itemId") int itemId,
  );

  @PATCH('/users/items/{itemId}')
  Future<void> updateItem(
    @Path("itemId") int itemId,
    @Body() UpdateItemParams params,
  );

  @DELETE('/users/items/{itemId}/image')
  Future<void> deleteItemImage(
    @Path("itemId") int itemId,
  );
}
