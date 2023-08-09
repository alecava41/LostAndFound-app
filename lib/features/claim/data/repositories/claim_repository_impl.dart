import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:lost_and_found/core/status/exceptions.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/claim/data/adapters/claim_received_from_dto.dart';
import 'package:lost_and_found/features/claim/data/adapters/claim_sent_from_dto.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_sent.dart';
import 'package:lost_and_found/features/claim/domain/repositories/claim_repository.dart';
import 'package:lost_and_found/features/claim/domain/usecases/create_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_received_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/claim_datasource.dart';
import '../../../../core/data/datasources/claim/read_claim_datasource.dart';

class ClaimRepositoryImpl implements ClaimRepository {
  final ClaimDataSource _dataSource;
  final NetworkInfo _networkInfo;
  final ReadClaimDataSource _readClaimsDataSource;
  final SecureStorage _storage;

  ClaimRepositoryImpl(
      {required ClaimDataSource dataSource,
      required NetworkInfo networkInfo,
      required ReadClaimDataSource readClaimsDataSource,
      required SecureStorage storage})
      : _dataSource = dataSource,
        _networkInfo = networkInfo,
        _readClaimsDataSource = readClaimsDataSource,
        _storage = storage;

  @override
  Future<Either<Failure, List<ClaimReceived>>> getReceivedClaims(GetReceivedClaimsParams params) async {
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
  Future<Either<Failure, List<ClaimSent>>> getSentClaims(GetSentClaimsParams params) async {
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
  Future<Either<Failure, Success>> createClaim(CreateClaimParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        _dataSource.createClaim(params);
        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> manageClaim(ManageClaimParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final session = await _storage.getSessionInformation();

        if (session == null) {
          throw UserNotAuthorizedException();
        }

        await _dataSource.manageClaim(params, session.user);
        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }
}
