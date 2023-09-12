import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../repositories/chat_repository.dart';

class UpdateItemTitleRoomUseCase implements UseCase<Success, UpdateItemTitleRoomParams> {
  final ChatRepository repository;

  UpdateItemTitleRoomUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(UpdateItemTitleRoomParams params) async {
    return await repository.updateItemTitleRoom(params);
  }
}

class UpdateItemTitleRoomParams {
  final int itemId;
  final String newItemName;

  const UpdateItemTitleRoomParams({
    required this.itemId,
    required this.newItemName,
  });
}
