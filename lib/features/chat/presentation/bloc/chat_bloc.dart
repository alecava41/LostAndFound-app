import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/chat_login_usecase.dart';

part 'chat_bloc.freezed.dart';

part 'chat_event.dart';

part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final ChatLoginUseCase _chatLoginUseCase;

  ChatBloc(
      {required ChatLoginUseCase chatLoginUseCase})
      : _chatLoginUseCase = chatLoginUseCase,
        super(ChatState.initial()) {
    on<ChatEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          chatContentCreated: () => _onChatContentCreated(emit),
        );
      },
    );
  }

  Future<void> _onChatContentCreated(Emitter<ChatState> emit) async {
    log(_chatLoginUseCase(NoParams()).toString());
  }
}
