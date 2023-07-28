import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../core/status/failures.dart';
import '../../../../item/domain/entities/item.dart';
import '../../../../item/domain/usecases/get_item.dart';

part 'answer_claim_bloc.freezed.dart';

part 'answer_claim_event.dart';

part 'answer_claim_state.dart';

class AnswerClaimBloc extends Bloc<AnswerClaimEvent, AnswerClaimState> {
  final GetItemUseCase _getItemUseCase;
  final SecureStorage _storage;
  final ManageClaimUseCase _manageClaimUseCase;

  AnswerClaimBloc(
      {required GetItemUseCase getItemUseCase,
      required SecureStorage storage,
      required ManageClaimUseCase manageClaimUseCase})
      : _getItemUseCase = getItemUseCase,
        _storage = storage,
        _manageClaimUseCase = manageClaimUseCase,
        super(AnswerClaimState.initial()) {
    on<AnswerClaimEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: (itemId) => _onContentCreated(emit, itemId),
            claimDecisionTaken: (status, claimId) => _onClaimDecisionTaken(emit, status, claimId),
            infoTriggered: () => _onInfoTriggered(emit));
      },
    );
  }

  Future<void> _onContentCreated(Emitter<AnswerClaimState> emit, int itemId) async {
    Either<Failure, Success>? loadFailureOrSuccess;
    Item? item;

    final itemResponse = await _getItemUseCase(GetItemParams(id: itemId));
    itemResponse.fold((failure) => loadFailureOrSuccess = Left(failure), (it) {
      loadFailureOrSuccess = const Right(Success.genericSuccess());
      item = it;
    });

    final session = await _storage.getSessionInformation();

    emit(state.copyWith(isLoading: false, loadFailureOrSuccess: loadFailureOrSuccess, item: item, token: session.token));
  }

  void _onInfoTriggered(Emitter<AnswerClaimState> emit) {
    emit(state.copyWith(isInfoOpen: !state.isInfoOpen));
  }

  Future<void> _onClaimDecisionTaken(Emitter<AnswerClaimState> emit, ClaimStatus status, int claimId) async {
    Either<Failure, Success>? claimFailureOrSuccess;

    emit(
      state.copyWith(
        isLoading: true,
      ),
    );

    final params = ManageClaimParams(itemId: state.item!.id, status: status, claimId: claimId);

    final claimResponse = await _manageClaimUseCase(params);
    claimResponse.fold(
        (failure) => claimFailureOrSuccess = Left(failure), (success) => claimFailureOrSuccess = Right(success));

    emit(
      state.copyWith(isLoading: false, claimFailureOrSuccess: claimFailureOrSuccess),
    );
  }
}
