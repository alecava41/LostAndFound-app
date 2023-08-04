import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/data/datasources/claim/read_claim_datasource.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/item/data/adapters/item_from_dto.dart';
import 'package:lost_and_found/features/item/data/adapters/news_from_dto.dart';
import 'package:lost_and_found/features/item/data/adapters/search_item_from_dto.dart';
import 'package:lost_and_found/features/item/data/adapters/user_item_from_dto.dart';
import 'package:lost_and_found/features/item/data/datasources/read_news_datasource.dart';
import 'package:lost_and_found/features/item/domain/entities/item.dart';
import 'package:lost_and_found/features/item/domain/entities/search_item.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/entities/news.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';
import 'package:lost_and_found/features/item/domain/usecases/create_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/solve_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/update_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/upload_item_image_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/item_data_source.dart';

class ItemRepositoryImpl implements ItemRepository {
  final NetworkInfo _networkInfo;
  final ItemDataSource _dataSource;
  final SecureStorage _storage;
  final ReadNewsDataSource _readNewsDataSource;
  final ReadClaimDataSource _readClaimDataSource;

  ItemRepositoryImpl(
      {required ItemDataSource dataSource,
      required SecureStorage storage,
      required NetworkInfo networkInfo,
      required ReadNewsDataSource readNewsDataSource,
      required ReadClaimDataSource readClaimDataSource})
      : _networkInfo = networkInfo,
        _dataSource = dataSource,
        _storage = storage,
        _readNewsDataSource = readNewsDataSource,
        _readClaimDataSource = readClaimDataSource;

  @override
  Future<Either<Failure, List<UserItem>>> getUserItems(GetUserItemsParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();

        final items = await _dataSource.getUserItems(params, session.user);
        final domainItems = items.map((item) => item.toDomain()).toList();

        return Right(domainItems);
      } else {
        return const Left(Failure.networkFailure());
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
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<SearchItem>>> searchItems(SearchItemsParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final items = await _dataSource.searchItems(params);
        final domainItems = items.map((item) => item.toDomain()).toList();

        return Right(domainItems);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Item>> getItem(GetItemParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final item = await _dataSource.getItem(params);
        final domainItem = item.toDomain();

        if (domainItem.claims != null &&
            domainItem.claims!.isNotEmpty &&
            (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android)) {
          final readClaims = await _readClaimDataSource.getReadClaims();

          for (var claim in domainItem.claims!) {
            if (readClaims.contains(claim.id)) {
              claim.opened = true;
            }
          }
        }

        return Right(domainItem);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, int>> createItem(CreateItemParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();
        final newItem = await _dataSource.createItem(params, session.user);

        return Right(newItem.id);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> uploadItemImage(UploadItemImageParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();
        await _dataSource.uploadItemImage(params, session.user);

        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> solveItem(SolveItemParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();
        await _dataSource.solveItem(params, session.user);

        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> deleteItem(DeleteItemParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();
        await _dataSource.deleteItem(params, session.user);

        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> updateItem(UpdateItemParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();
        await _dataSource.updateItem(params, session.user);

        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
