import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../repositories/chat_repository.dart';

class SendMessageUseCase implements UseCase<Success, SendMessageParams> {
  final ChatRepository repository;

  SendMessageUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(SendMessageParams params) async {
    return await repository.sendMessage(params);
  }
}

class SendMessageParams {
  final PartialText message;
  final String roomId;

  const SendMessageParams({
    required this.message,
    required this.roomId,
  });
}
