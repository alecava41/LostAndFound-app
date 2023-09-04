import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/chat_repository.dart';

class CreateRoomUseCase implements UseCase<Room, CreateRoomParams> {
  final ChatRepository repository;

  CreateRoomUseCase(this.repository);

  @override
  Future<Either<Failure, Room>> call(CreateRoomParams params) async {
    return await repository.createRoom(params);
  }
}

class CreateRoomParams {
  final int id1;
  final int id2;
  final String username1;
  final String username2;
  final int itemId;
  final String itemName;

  const CreateRoomParams({
    required this.id1,
    required this.id2,
    required this.username1,
    required this.username2,
    required this.itemId,
    required this.itemName,
  });
}
