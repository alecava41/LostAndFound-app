import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';

import 'package:lost_and_found/core/status/failures.dart';

import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/chat/data/datasources/chat_data_source.dart';
import 'package:lost_and_found/features/chat/domain/usecases/create_room_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/get_room_messages_usecase.dart';

import 'package:lost_and_found/features/chat/domain/usecases/registration_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/send_message_usecase.dart';

import '../../../../core/data/repositories/utils.dart';
import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatDataSource _dataSource;
  final NetworkInfo _networkInfo;
  final SecureStorage _storage;

  ChatRepositoryImpl(this._dataSource, this._networkInfo, this._storage);

  @override
  Future<Either<Failure, Success>> register(RegistrationChatParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        await _dataSource.register(params);

        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> login(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        final email = (await _storage.getCredentialsForChatLogin()).first;
        final password = (await _storage.getCredentials()).password;

        await _dataSource.login(email, password);

        return const Right(Success.genericSuccess());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Stream<List<Room>>>> getUserRooms(NoParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        return Right(_dataSource.getUserRooms());
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Room>> createRoom(CreateRoomParams params) async {
     try {
      if (await _networkInfo.isConnected) {
        return Right(await _dataSource.createRoom(params));
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Pair<Room, Stream<List<Message>>>>> getRoomMessages(GetRoomMessagesParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        return Right(await _dataSource.getRoomMessages(params));
      } else {
        return const Left(Failure.networkFailure());
      }
    } on Exception catch (e) {
      return Left(mapExceptionToFailure(e));
    }
  }

  @override
  Future<Either<Failure, Success>> sendMessage(SendMessageParams params) async {
    try {
      if (await _networkInfo.isConnected) {
        await _dataSource.sendMessage(params);
        return const Right(Success.genericSuccess());
    } else {
    return const Left(Failure.networkFailure());
    }
    } on Exception catch (e) {
    return Left(mapExceptionToFailure(e));
    }
  }
}
