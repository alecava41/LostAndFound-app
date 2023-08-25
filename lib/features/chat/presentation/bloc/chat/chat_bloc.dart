import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/chat/domain/usecases/get_room_messages_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/send_message_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../item/domain/entities/item.dart';

part 'chat_bloc.freezed.dart';

part 'chat_event.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetRoomMessagesUseCase _getRoomMessagesUseCase;
  final GetItemUseCase _getItemUseCase;
  final SendMessageUseCase _sendMessageUseCase;

  final SecureStorage _storage;

  ChatBloc(
      {required GetRoomMessagesUseCase getRoomMessagesUseCase,
      required GetItemUseCase getItemUseCase,
      required SendMessageUseCase sendMessageUseCase,
      required SecureStorage storage})
      : _getRoomMessagesUseCase = getRoomMessagesUseCase,
        _getItemUseCase = getItemUseCase,
        _sendMessageUseCase = sendMessageUseCase,
        _storage = storage,
        super(ChatState.initial()) {
    on<ChatEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          chatContentCreated: (roomId, itemId) => _onInboxContentCreated(emit, roomId, itemId),
          messageSent: (message) => _onMessageSent(message),
        );
      },
    );
  }

  Future<void> _onMessageSent(PartialText message) async {
    await _sendMessageUseCase(SendMessageParams(message: message, roomId: state.room!.id));
  }

  Future<void> _onInboxContentCreated(Emitter<ChatState> emit, roomId, itemId) async {
    final messagesResponse = await _getRoomMessagesUseCase(GetRoomMessagesParams(roomId: roomId));
    final itemResponse = await _getItemUseCase(GetItemParams(id: itemId));
    final session = await _storage.getSessionInformation();

    Room? room;
    Stream<List<Message>> messages = const Stream.empty();

    messagesResponse.fold((_) {}, (pair) {
      room = pair.first;
      messages = pair.second;
    });

    emit(
      state.copyWith(
          messages: messages,
          room: room,
          hasLoadingError: messagesResponse.isLeft() || itemResponse.isLeft(),
          token: session?.token ?? "",
          currentUsername: session?.username,
          item: itemResponse.fold((_) => null, (item) => item)),
    );
  }
}
