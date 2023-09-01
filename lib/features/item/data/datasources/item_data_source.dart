import 'package:lost_and_found/features/item/data/models/insert_item/item_response_dto.dart';
import 'package:lost_and_found/features/item/data/models/user_item/user_item_dto.dart';
import 'package:lost_and_found/features/item/domain/usecases/create_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/update_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/upload_item_image_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import '../../domain/usecases/delete_item_image_usecase.dart';
import '../../domain/usecases/search_items_usecase.dart';
import '../../domain/usecases/solve_item_usecase.dart';
import '../models/item/item_dto.dart';
import '../models/news/news_dto.dart';
import '../models/search_item/search_item_dto.dart';
import 'item_client.dart';

abstract class ItemDataSource {
  Future<List<UserItemDto>> getUserItems(GetUserItemsParams params, int userId);
  Future<List<NewsDto>> getUserNotifications(GetUserNotificationsParams params, int userId);
  Future<List<SearchItemDto>> searchItems(SearchItemsParams params);
  Future<ItemDto> getItem(GetItemParams params);
  Future<ItemResponseDto> createItem(CreateItemParams params, int userId);
  Future<void> uploadItemImage(UploadItemImageParams params, int userId);
  Future<void> solveItem(SolveItemParams params, int userId);
  Future<void> deleteItem(DeleteItemParams params, int userId);
  Future<void> updateItem(UpdateItemParams params, int userId);
  Future<void> deleteItemImage(DeleteItemImageParams params, int userId);
}

class ItemDataSourceImpl implements ItemDataSource {
  final ItemClient _client;

  ItemDataSourceImpl(this._client);

  @override
  Future<List<UserItemDto>> getUserItems(GetUserItemsParams params, int userId) async {
    return _client.getUserItems(userId, params.type.name).catchError(handleError<List<UserItemDto>>);
  }

  @override
  Future<List<NewsDto>> getUserNotifications(GetUserNotificationsParams params, int userId) {
     return _client.getNews(userId, params.last).catchError(handleError<List<NewsDto>>);
  }

  @override
  Future<List<SearchItemDto>> searchItems(SearchItemsParams params) {
    return _client.getItems(
      params.type.name,
      params.last,
      params.X,
      params.Y,
      params.range,
      params.category,
      params.date
    ).catchError(handleError<List<SearchItemDto>>);
  }

  @override
  Future<ItemDto> getItem(GetItemParams params) {
    return _client.getItem(params.id).catchError(handleError<ItemDto>);
  }

  @override
  Future<ItemResponseDto> createItem(CreateItemParams params, int userId) {
    return _client.createItem(userId, params).catchError(handleError<ItemResponseDto>);
  }

  @override
  Future<void> uploadItemImage(UploadItemImageParams params, int userId) {
    return _client.uploadItemImage(userId, params.itemId, params.image).catchError(handleError<void>);
  }

  @override
  Future<void> solveItem(SolveItemParams params, int userId) {
    return _client.solveItem(userId, params.itemId).catchError(handleError<void>);
  }

  @override
  Future<void> deleteItem(DeleteItemParams params, int userId) {
    return _client.deleteItem(userId, params.itemId).catchError(handleError<void>);
  }

  @override
  Future<void> updateItem(UpdateItemParams params, int userId) {
    return _client.updateItem(userId, params.itemId, params).catchError(handleError<void>);
  }

  @override
  Future<void> deleteItemImage(DeleteItemImageParams params, int userId) {
    return _client.deleteItemImage(userId, params.itemId).catchError(handleError<void>);
  }
}