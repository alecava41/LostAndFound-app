import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/status/success.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../../chat/domain/usecases/create_room_usecase.dart';
import '../../../../item/domain/entities/item.dart';
import '../../../../item/domain/usecases/get_item_usecase.dart';
import '../../../domain/fields/answer_question/answer_question_answer.dart';
import '../../../domain/usecases/create_claim_usecase.dart';

part 'answer_question_bloc.freezed.dart';

part 'answer_question_event.dart';

part 'answer_question_state.dart';

class AnswerQuestionBloc extends Bloc<AnswerQuestionEvent, AnswerQuestionState> {
  final GetItemUseCase _getItemUseCase;
  final SecureStorage _storage;
  final CreateRoomUseCase _createRoomUseCase;
  final CreateClaimUseCase _createClaimUseCase;

  AnswerQuestionBloc({
    required GetItemUseCase getItemUseCase,
    required SecureStorage storage,
    required CreateRoomUseCase createRoomUseCase,
    required CreateClaimUseCase createClaimUseCase,
  })  : _getItemUseCase = getItemUseCase,
        _storage = storage,
        _createRoomUseCase = createRoomUseCase,
        _createClaimUseCase = createClaimUseCase,
        super(AnswerQuestionState.initial()) {
    on<AnswerQuestionEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: (itemId) => _onContentCreated(emit, itemId),
            answerFieldChanged: (String answer) => _onAnswerFieldChanged(emit, answer),
            claimCreated: () => _onClaimSubmitted(emit),
            createChatRoom: (int id, String username) => _onChatRoomCreation(emit, id, username));
      },
    );
  }

  Future<void> _onChatRoomCreation(Emitter<AnswerQuestionState> emit, int id2, username2) async {
    final userId = (await _storage.getSessionInformation())!.user;

    final params = CreateRoomParams(
      id1: userId,
      id2: id2,
      username1: (await _storage.getCredentialsForChatLogin()).second,
      username2: username2,
      itemId: state.item!.id,
      itemName: state.item!.title,
    );

    final response = await _createRoomUseCase(params);

    emit(state.copyWith(roomCreationFailureOrSuccess: response));
    emit(state.copyWith(roomCreationFailureOrSuccess: null));
  }

  Future<void> _onContentCreated(Emitter<AnswerQuestionState> emit, int itemId) async {
    emit(state.copyWith(isLoading: true, hasLoadingError: false));

    Item? item;

    final itemResponse = await _getItemUseCase(GetItemParams(id: itemId));
    final Either<Failure, Success> loadFailureOrSuccess = itemResponse.fold((failure) => Left(failure), (it) {
      item = it;
      return const Right(Success.genericSuccess());
    });

    final session = await _storage.getSessionInformation();

    emit(
      state.copyWith(
          isLoading: false,
          hasLoadingError: loadFailureOrSuccess.isLeft(),
          item: item,
          token: session != null ? session.token : ""),
    );
  }

  void _onAnswerFieldChanged(Emitter<AnswerQuestionState> emit, String answer) {
    emit(state.copyWith(answer: AnswerField(answer)));
  }

  Future<void> _onClaimSubmitted(Emitter<AnswerQuestionState> emit) async {
    final isAnswerValid = state.answer.value.isRight();

    Either<Failure, Item>? claimFailureOrSuccess;

    if (isAnswerValid) {
      emit(
        state.copyWith(
          isLoading: true,
        ),
      );

      final params = CreateClaimParams(itemId: state.item!.id, answer: state.answer.value.getOrElse(() => ""));

      final claimResponse = await _createClaimUseCase(params);
      claimResponse.fold(
          (failure) => claimFailureOrSuccess = Left(failure), (item) => claimFailureOrSuccess = Right(item));
    }

    emit(
      state.copyWith(isLoading: false, showErrorMessage: true, claimFailureOrSuccess: claimFailureOrSuccess),
    );
    emit(state.copyWith(claimFailureOrSuccess: null));
  }
}
