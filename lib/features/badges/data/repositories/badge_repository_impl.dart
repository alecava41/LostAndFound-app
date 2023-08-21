import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/data/datasources/claim/read_claim_datasource.dart';
import 'package:lost_and_found/features/badges/data/datasources/badge_data_source.dart';
import 'package:lost_and_found/core/data/datasources/news/read_news_datasource.dart';
import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/status/exceptions.dart';
import '../../domain/repositories/badge_repository.dart';

class BadgeRepositoryImpl implements BadgeRepository {
  final NetworkInfo _networkInfo;
  final BadgeDataSource _dataSource;
  final SecureStorage _storage;
  final ReadNewsDataSource _readNewsDataSource;
  final ReadClaimDataSource _readClaimDataSource;

  BadgeRepositoryImpl(
      {required BadgeDataSource dataSource,
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
  Future<Either<Failure, int>> getUnreadNewsNumber(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();

        if (session == null) {
          throw UserNotAuthorizedException();
        }

        final newsIds = await _dataSource.getUnreadNews(params);
        final readNews = await _readNewsDataSource.getReadNews();

        final unreadNewsIds = Set.from(newsIds).difference(Set.from(readNews)).length;
        return Right(unreadNewsIds);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, int>> getUnreadReceivedClaimsNumber(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();

        if (session == null) {
          throw UserNotAuthorizedException();
        }

        final claimsIds = await _dataSource.getUnreadReceivedClaims(params);
        final readClaims = await _readClaimDataSource.getReadClaims();

        final unreadClaimsIds = Set.from(claimsIds).difference(Set.from(readClaims)).length;
        return Right(unreadClaimsIds);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
