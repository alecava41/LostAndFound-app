import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../repositories/chat_repository.dart';

class GetUserRoomsUseCase implements UseCase<Stream<List<Room>>, NoParams> {
  final ChatRepository repository;

  GetUserRoomsUseCase(this.repository);

  @override
  Future<Either<Failure, Stream<List<Room>>>> call(NoParams params) async {
    return await repository.getUserRooms(params);
  }
}