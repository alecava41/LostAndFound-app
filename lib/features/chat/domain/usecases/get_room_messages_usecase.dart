import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/chat_repository.dart';

class GetRoomMessagesUseCase implements UseCase<Pair<Room, Stream<List<Message>>>, GetRoomMessagesParams> {
  final ChatRepository repository;

  GetRoomMessagesUseCase(this.repository);

  @override
  Future<Either<Failure, Pair<Room, Stream<List<Message>>>>> call(GetRoomMessagesParams params) async {
    return await repository.getRoomMessages(params);
  }
}

class GetRoomMessagesParams {
  final String roomId;

  const GetRoomMessagesParams({required this.roomId});
}