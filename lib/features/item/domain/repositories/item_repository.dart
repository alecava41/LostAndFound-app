import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';

import '../../../../core/status/failures.dart';
import '../entities/news.dart';
import '../entities/search_item.dart';
import '../usecases/get_user_items_usecase.dart';

abstract class ItemRepository {
  Future<Either<Failure, List<UserItem>>> getUserItems(GetUserItemsParams params);
  Future<Either<Failure, List<News>>> getUserNotifications(GetUserNotificationsParams params);
  Future<Either<Failure, List<SearchItem>>> searchItems(SearchItemsParams params);
}