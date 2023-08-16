import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_image_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/solve_item_usecase.dart';

import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../entities/item.dart';
import '../entities/news.dart';
import '../entities/search_item.dart';
import '../usecases/create_item_usecase.dart';
import '../usecases/delete_item_usecase.dart';
import '../usecases/get_user_items_usecase.dart';
import '../usecases/insert_read_news_usecase.dart';
import '../usecases/update_item_usecase.dart';
import '../usecases/upload_item_image_usecase.dart';

abstract class ItemRepository {
  Future<Either<Failure, List<UserItem>>> getUserItems(GetUserItemsParams params);
  Future<Either<Failure, List<News>>> getUserNotifications(GetUserNotificationsParams params);
  Future<Either<Failure, List<SearchItem>>> searchItems(SearchItemsParams params);
  Future<Either<Failure, Item>> getItem(GetItemParams params);
  Future<Either<Failure, int>> createItem(CreateItemParams params);
  Future<Either<Failure, Success>> uploadItemImage(UploadItemImageParams params);
  Future<Either<Failure, Success>> solveItem(SolveItemParams params);
  Future<Either<Failure, Success>> deleteItem(DeleteItemParams params);
  Future<Either<Failure, Success>> updateItem(UpdateItemParams params);
  Future<Either<Failure, Success>> deleteItemImage(DeleteItemImageParams params);
  Future<Either<Failure, Success>> insertReadNews(InsertReadNewsParams params);
}