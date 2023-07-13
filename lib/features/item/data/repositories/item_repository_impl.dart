import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/features/item/data/adapters/news_from_dto.dart';
import 'package:lost_and_found/features/item/data/adapters/user_item_from_dto.dart';
import 'package:lost_and_found/features/item/data/datasources/read_news_data_source.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/entities/news.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/item_data_source.dart';

class ItemRepositoryImpl implements ItemRepository {
  final NetworkInfo _networkInfo;
  final ItemDataSource _dataSource;
  final SecureStorage _storage;
  final ReadNewsDataSource _readNewsDataSource;

  ItemRepositoryImpl(
      {required ItemDataSource dataSource,
      required SecureStorage storage,
      required NetworkInfo networkInfo,
      required ReadNewsDataSource readNewsDataSource})
      : _networkInfo = networkInfo,
        _dataSource = dataSource,
        _storage = storage,
        _readNewsDataSource = readNewsDataSource;

  @override
  Future<Either<Failure, List<UserItem>>> getUserItems(GetUserItemsParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();

        final items = await _dataSource.getUserItems(params, session.user);
        final domainItems = items.map((item) => item.toDomain()).toList();

        return Right(domainItems);
      } else {
        return Left(NetworkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<News>>> getUserNotifications(GetUserNotificationsParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();
        final news = await _dataSource.getUserNotifications(params, session.user);
        final domainNews = news.map((news) => news.toDomain()).toList();

        if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android) {
          final readNews = await _readNewsDataSource.getReadNews();

          for (var news in domainNews) {
            if (readNews.contains(news.id)) {
              news.opened = true;
            }
          }
        }

        return Right(domainNews);
      } else {
        return Left(NetworkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
