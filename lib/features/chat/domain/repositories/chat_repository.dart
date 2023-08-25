import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/chat/domain/usecases/create_room_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/registration_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/send_message_usecase.dart';

import '../../../../core/status/failures.dart';
import '../usecases/get_room_messages_usecase.dart';

abstract class ChatRepository {
  // TODO (@alecava41) need to perform firebase logout on app close!

  Future<Either<Failure, Success>> register(RegistrationChatParams params);
  Future<Either<Failure, Success>> login (NoParams params);
  Future<Either<Failure, Stream<List<Room>>>> getUserRooms(NoParams params);
  Future<Either<Failure, Room>> createRoom(CreateRoomParams params);
  Future<Either<Failure, Pair<Room, Stream<List<Message>>>>> getRoomMessages(GetRoomMessagesParams params);
  Future<Either<Failure, Success>> sendMessage(SendMessageParams params);
}