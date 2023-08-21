import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/badges/data/datasources/badge_client.dart';

import '../../../../core/data/datasources/utils.dart';

abstract class BadgeDataSource {
  Future<List<int>> getUnreadNews(NoParams params);

  Future<List<int>> getUnreadReceivedClaims(NoParams params);
}

class BadgeDataSourceImpl implements BadgeDataSource {
  final BadgeClient _client;

  BadgeDataSourceImpl(this._client);

  @override
  Future<List<int>> getUnreadNews(NoParams params) {
    return _client.getUnreadNews().catchError(handleError<List<int>>);
  }

  @override
  Future<List<int>> getUnreadReceivedClaims(NoParams params) {
    return _client.getUnreadReceivedClaims().catchError(handleError<List<int>>);
  }
}
