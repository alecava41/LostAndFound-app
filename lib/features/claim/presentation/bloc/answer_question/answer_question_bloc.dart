import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/status/success.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
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
  final CreateClaimUseCase _createClaimUseCase;

  AnswerQuestionBloc(
      {required GetItemUseCase getItemUseCase,
      required SecureStorage storage,
      required CreateClaimUseCase createClaimUseCase})
      : _getItemUseCase = getItemUseCase,
        _storage = storage,
        _createClaimUseCase = createClaimUseCase,
        super(AnswerQuestionState.initial()) {
    on<AnswerQuestionEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: (itemId) => _onContentCreated(emit, itemId),
            answerFieldChanged: (String answer) => _onAnswerFieldChanged(emit, answer),
            claimCreated: () => _onClaimSubmitted(emit),
            infoTriggered: () => _onInfoTriggered(emit));
      },
    );
  }

  Future<void> _onContentCreated(Emitter<AnswerQuestionState> emit, int itemId) async {
    Either<Failure, Success>? loadFailureOrSuccess;
    Item? item;

    final itemResponse = await _getItemUseCase(GetItemParams(id: itemId));
    itemResponse.fold((failure) => loadFailureOrSuccess = Left(failure), (it) {
      loadFailureOrSuccess = const Right(Success.genericSuccess());
      item = it;
    });

    final session = await _storage.getSessionInformation();

    emit(
      state.copyWith(
          isLoading: false,
          loadFailureOrSuccess: loadFailureOrSuccess,
          item: item,
          token: session != null ? session.token : ""),
    );
  }

  void _onAnswerFieldChanged(Emitter<AnswerQuestionState> emit, String answer) {
    emit(state.copyWith(answer: AnswerField(answer)));
  }

  void _onInfoTriggered(Emitter<AnswerQuestionState> emit) {
    emit(state.copyWith(isInfoOpen: !state.isInfoOpen));
  }

  Future<void> _onClaimSubmitted(Emitter<AnswerQuestionState> emit) async {
    final isAnswerValid = state.answer.value.isRight();

    Either<Failure, Item>? claimFailureOrSuccess;

    if (isAnswerValid) {
      emit(
        state.copyWith(
          isLoading: true,
          loadFailureOrSuccess: null,
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
