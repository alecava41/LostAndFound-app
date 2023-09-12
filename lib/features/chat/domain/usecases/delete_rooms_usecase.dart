import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../repositories/chat_repository.dart';

class DeleteRoomsUseCase implements UseCase<Success, DeleteRoomsParams> {
  final ChatRepository repository;

  DeleteRoomsUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(DeleteRoomsParams params) async {
    return await repository.deleteRooms(params);
  }
}

class DeleteRoomsParams {
  final int itemId;

  const DeleteRoomsParams({
    required this.itemId,
  });
}
