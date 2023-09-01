import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/claim/data/adapters/claim_received_from_dto.dart';
import 'package:lost_and_found/features/claim/data/adapters/claim_sent_from_dto.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_sent.dart';
import 'package:lost_and_found/features/item/data/adapters/item_from_dto.dart';
import 'package:lost_and_found/features/item/domain/entities/item.dart' as item;
import 'package:lost_and_found/features/claim/domain/repositories/claim_repository.dart';
import 'package:lost_and_found/features/claim/domain/usecases/create_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/insert_read_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/claim_datasource.dart';
import '../../../../core/data/datasources/claim/read_claim_datasource.dart';

class ClaimRepositoryImpl implements ClaimRepository {
  final ClaimDataSource _dataSource;
  final NetworkInfo _networkInfo;
  final ReadClaimDataSource _readClaimsDataSource;

  ClaimRepositoryImpl({
    required ClaimDataSource dataSource,
    required NetworkInfo networkInfo,
    required ReadClaimDataSource readClaimsDataSource,
  })  : _dataSource = dataSource,
        _networkInfo = networkInfo,
        _readClaimsDataSource = readClaimsDataSource;

  @override
  Future<Either<Failure, List<ClaimReceived>>> getReceivedClaims(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final receivedClaims = await _dataSource.getReceivedClaims(params);
        final domainReceivedClaims = receivedClaims.map((claim) => claim.toDomain()).toList();

        if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android) {
          final readClaims = await _readClaimsDataSource.getReadClaims();

          for (var claim in domainReceivedClaims) {
            if (readClaims.contains(claim.id)) {
              claim.opened = true;
            }
          }
        }

        return Right(domainReceivedClaims);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, List<ClaimSent>>> getSentClaims(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final sentClaims = await _dataSource.getSentClaims(params);
        final domainSentClaims = sentClaims.map((claim) => claim.toDomain()).toList();

        return Right(domainSentClaims);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, item.Item>> createClaim(CreateClaimParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final itemDto = await _dataSource.createClaim(params);
        return Right(itemDto.toDomain());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, item.Item>> manageClaim(ManageClaimParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final updatedItem = await _dataSource.manageClaim(params);
        final domainUpdatedItem = updatedItem.toDomain();

        if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.android) {
          final readClaims = await _readClaimsDataSource.getReadClaims();

          for (var claim in domainUpdatedItem.claims!) {
            if (readClaims.contains(claim.id)) {
              claim.opened = true;
            }
          }
        }

        return Right(domainUpdatedItem);
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> insertReadClaim(InsertReadClaimParams params) async {
    try {
      await _readClaimsDataSource.insertReadClaim(params.claimId);
      return const Right(Success.genericSuccess());
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
