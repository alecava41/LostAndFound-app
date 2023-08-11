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

  @GET('/users/{userId}/items')
  Future<List<UserItemDto>> getUserItems(
    @Path() int userId,
    @Query("type") String type,
    @Query("last") int last,
  );

  @GET('/users/{userId}/items/news')
  Future<List<NewsDto>> getNews(
      @Path() int userId,
      @Query("last") int last,
      );

  @GET('/items')
  Future<List<SearchItemDto>> getItems(
      @Query("type") String type,
      @Query("last") int last,
      @Query("X") double X,
      @Query("Y") double Y,
      @Query("range") int range,
      @Query("category") int category,
      @Query("after") DateTime? date
      );

  @GET('/items/{itemId}')
  Future<ItemDto> getItem(
      @Path("itemId") int id,
      );

  @POST('/users/{userId}/items')
  Future<ItemResponseDto> createItem(
      @Path("userId") int userId,
      @Body() CreateItemParams params,
      );

  @POST('/users/{userId}/items/{itemId}/image')
  @MultiPart()
  Future<void> uploadItemImage(
      @Path("userId") int userId,
      @Path("itemId") int itemId,
      @Part() File image,
      );

  @PATCH('/users/{userId}/items/{itemId}/status')
  Future<void> solveItem(
      @Path("userId") int userId,
      @Path("itemId") int itemId,
      );

  @DELETE('/users/{userId}/items/{itemId}')
  Future<void> deleteItem(
      @Path("userId") int userId,
      @Path("itemId") int itemId,
      );

  @PATCH('/users/{userId}/items/{itemId}')
  Future<void> updateItem(
      @Path("userId") int userId,
      @Path("itemId") int itemId,
      @Body() UpdateItemParams params,
      );

  @DELETE('/users/{userId}/items/{itemId}/image')
  Future<void> deleteItemImage(
      @Path("userId") int userId,
      @Path("itemId") int itemId,
      );
}
