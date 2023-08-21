import 'package:dartz/dartz.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/chat/data/datasources/chat_client.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';


class ChatLoginUseCase implements UseCase<Success, NoParams> {
  final ChatClient _client;

  ChatLoginUseCase(this._client);

  @override
  Future<Either<Failure, Success>> call(NoParams params) async {
    return await _client.loginToChatServer(params);
  }
}
