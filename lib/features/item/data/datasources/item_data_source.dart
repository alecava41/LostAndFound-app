import 'package:lost_and_found/features/item/data/models/insert_item/item_response_dto.dart';
import 'package:lost_and_found/features/item/data/models/user_item/user_item_dto.dart';
import 'package:lost_and_found/features/item/domain/usecases/create_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/update_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/upload_item_image_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../domain/usecases/delete_item_image_usecase.dart';
import '../../domain/usecases/search_items_usecase.dart';
import '../../domain/usecases/solve_item_usecase.dart';
import '../models/item/item_dto.dart';
import '../models/news/news_dto.dart';
import '../models/search_item/search_item_dto.dart';
import 'item_client.dart';

abstract class ItemDataSource {
  Future<List<UserItemDto>> getUserItems(GetUserItemsParams params);
  Future<List<NewsDto>> getUserNotifications(NoParams params);
  Future<List<SearchItemDto>> searchItems(SearchItemsParams params);
  Future<ItemDto> getItem(GetItemParams params);
  Future<ItemResponseDto> createItem(CreateItemParams params);
  Future<void> uploadItemImage(UploadItemImageParams params);
  Future<void> solveItem(SolveItemParams params);
  Future<void> deleteItem(DeleteItemParams params);
  Future<void> updateItem(UpdateItemParams params);
  Future<void> deleteItemImage(DeleteItemImageParams params);
}

class ItemDataSourceImpl implements ItemDataSource {
  final ItemClient _client;

  ItemDataSourceImpl(this._client);

  @override
  Future<List<UserItemDto>> getUserItems(GetUserItemsParams params) async {
    return _client.getUserItems(params.type.name).catchError(handleError<List<UserItemDto>>);
  }

  @override
  Future<List<NewsDto>> getUserNotifications(NoParams params) {
     return _client.getNews().catchError(handleError<List<NewsDto>>);
  }

  @override
  Future<List<SearchItemDto>> searchItems(SearchItemsParams params) {
    return _client.getItems(
      params.type.name,
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
  Future<ItemResponseDto> createItem(CreateItemParams params) {
    return _client.createItem(params).catchError(handleError<ItemResponseDto>);
  }

  @override
  Future<void> uploadItemImage(UploadItemImageParams params) {
    return _client.uploadItemImage(params.itemId, params.image).catchError(handleError<void>);
  }

  @override
  Future<void> solveItem(SolveItemParams params) {
    return _client.solveItem(params.itemId).catchError(handleError<void>);
  }

  @override
  Future<void> deleteItem(DeleteItemParams params) {
    return _client.deleteItem(params.itemId).catchError(handleError<void>);
  }

  @override
  Future<void> updateItem(UpdateItemParams params) {
    return _client.updateItem(params.itemId, params).catchError(handleError<void>);
  }

  @override
  Future<void> deleteItemImage(DeleteItemImageParams params) {
    return _client.deleteItemImage(params.itemId).catchError(handleError<void>);
  }
}