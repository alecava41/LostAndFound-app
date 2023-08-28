import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../repositories/chat_repository.dart';

class ReadChatUseCase implements UseCase<Success, ReadChatParams> {
  final ChatRepository repository;

  ReadChatUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(ReadChatParams params) async {
    return await repository.readChat(params);
  }
}

class ReadChatParams {
  final String roomId;
  final int currentId;

  const ReadChatParams({
    required this.currentId,
    required this.roomId,
  });
}
