import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../domain/usecases/get_user_rooms_usecase.dart';
import '../../../domain/usecases/login_chat_usecase.dart';

part 'inbox_bloc.freezed.dart';

part 'inbox_event.dart';

part 'inbox_state.dart';

class InboxBloc extends Bloc<InboxEvent, InboxState> {
  final LoginChatUseCase _loginChatUseCase;
  final GetUserRoomsUseCase _getUserRoomsUseCase;

  final SecureStorage _storage;

  InboxBloc({required LoginChatUseCase loginChatUseCase,
    required GetUserRoomsUseCase getUserRoomsUseCase,
    required SecureStorage storage})
      : _loginChatUseCase = loginChatUseCase,
        _getUserRoomsUseCase = getUserRoomsUseCase,
        _storage = storage,
        super(InboxState.initial()) {
    on<InboxEvent>(
          (event, emit) async {
        await event.when<FutureOr<void>>(
          inboxContentCreated: () => _onInboxContentCreated(emit),
        );
      },
    );
  }

  Future<void> _onInboxContentCreated(Emitter<InboxState> emit) async {
    final loginResponse = await _loginChatUseCase(NoParams());
    Either<Failure, Stream<List<Room>>> roomsResponse = const Left(Failure.genericFailure());

    if (loginResponse.isRight()) {
      roomsResponse = await _getUserRoomsUseCase(NoParams());
    }

    final session = await _storage.getSessionInformation();

    emit(
      state.copyWith(
        hasLoginOrLoadingError: loginResponse.isLeft() || roomsResponse.isLeft(),
        userRooms: roomsResponse.getOrElse(() => const Stream.empty()),
        token: session?.token ?? "",
        currentId: session?.user ?? 0,
      ),
    );
  }
}
