import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../repositories/chat_repository.dart';

class RegistrationChatUseCase implements UseCase<Success, RegistrationChatParams> {
  final ChatRepository repository;

  RegistrationChatUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(RegistrationChatParams params) async {
    return await repository.register(params);
  }
}

class RegistrationChatParams {
  final String email;
  final String password;
  final String username;

  RegistrationChatParams({required this.email, required this.password, required this.username});
}
