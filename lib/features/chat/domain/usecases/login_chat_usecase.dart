import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/failures.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';
import '../repositories/chat_repository.dart';

class LoginChatUseCase implements UseCase<Success, NoParams> {
  final ChatRepository repository;

  LoginChatUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(NoParams params) async {
    return await repository.login(params);
  }
}
