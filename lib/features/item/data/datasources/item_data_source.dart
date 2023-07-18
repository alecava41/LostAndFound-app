import 'package:lost_and_found/features/item/data/models/user_item/user_item_dto.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import '../../domain/usecases/search_items_usecase.dart';
import '../models/news/news_dto.dart';
import '../models/search_item/search_item_dto.dart';
import 'item_client.dart';

abstract class ItemDataSource {
  Future<List<UserItemDto>> getUserItems(GetUserItemsParams params, int userId);
  Future<List<NewsDto>> getUserNotifications(GetUserNotificationsParams params, int userId);
  Future<List<SearchItemDto>> searchItems(SearchItemsParams params);
}

class ItemDataSourceImpl implements ItemDataSource {
  final ItemClient _client;

  ItemDataSourceImpl(this._client);

  @override
  Future<List<UserItemDto>> getUserItems(GetUserItemsParams params, int userId) async {
    return _client.getUserItems(userId, params.type.name, params.last).catchError(handleError<List<UserItemDto>>);
  }

  @override
  Future<List<NewsDto>> getUserNotifications(GetUserNotificationsParams params, int userId) {
     return _client.getNews(userId, params.last).catchError(handleError<List<NewsDto>>);
  }

  @override
  Future<List<SearchItemDto>> searchItems(SearchItemsParams params) {
    return _client.getItems(
      params.type.name,
      params.order.name,
      params.last,
      params.X,
      params.Y,
      params.range,
      params.category,
      params.date
    ).catchError(handleError<List<SearchItemDto>>);
  }
}