import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/status/success.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/domain/entities/claim_status.dart';
import '../../../../../core/status/failures.dart';
import '../../../../chat/domain/usecases/create_room_usecase.dart';
import '../../../../item/domain/entities/item.dart';
import '../../../../item/domain/usecases/get_item_usecase.dart';

part 'answer_claim_bloc.freezed.dart';

part 'answer_claim_event.dart';

part 'answer_claim_state.dart';

class AnswerClaimBloc extends Bloc<AnswerClaimEvent, AnswerClaimState> {
  final GetItemUseCase _getItemUseCase;
  final SecureStorage _storage;
  final CreateRoomUseCase _createRoomUseCase;
  final ManageClaimUseCase _manageClaimUseCase;

  AnswerClaimBloc({
    required GetItemUseCase getItemUseCase,
    required SecureStorage storage,
    required ManageClaimUseCase manageClaimUseCase,
    required CreateRoomUseCase createRoomUseCase,
  })  : _getItemUseCase = getItemUseCase,
        _storage = storage,
        _manageClaimUseCase = manageClaimUseCase,
        _createRoomUseCase = createRoomUseCase,
        super(AnswerClaimState.initial()) {
    on<AnswerClaimEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: (itemId) => _onContentCreated(emit, itemId),
            claimDecisionTaken: (status, claimId) => _onClaimDecisionTaken(emit, status, claimId),
            createChatRoom: (int id, String username) => _onChatRoomCreation(emit, id, username));
      },
    );
  }

  Future<void> _onChatRoomCreation(Emitter<AnswerClaimState> emit, int id2, username2) async {
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

  Future<void> _onContentCreated(Emitter<AnswerClaimState> emit, int itemId) async {
    emit(state.copyWith(isLoading: true, hasLoadingError: false));

    Item? item;

    final itemResponse = await _getItemUseCase(GetItemParams(id: itemId));
    final Either<Failure, Success> loadFailureOrSuccess = itemResponse.fold((failure) {
      return Left(failure);
    }, (it) {
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

  Future<void> _onClaimDecisionTaken(Emitter<AnswerClaimState> emit, ClaimStatus status, int claimId) async {
    Either<Failure, Item>? claimFailureOrSuccess;

    emit(state.copyWith(isLoading: true));

    final params = ManageClaimParams(itemId: state.item!.id, status: status, claimId: claimId);

    final claimResponse = await _manageClaimUseCase(params);
    claimResponse.fold((failure) => claimFailureOrSuccess = Left(failure), (item) => claimFailureOrSuccess = Right(item));

    emit(
      state.copyWith(isLoading: false, claimFailureOrSuccess: claimFailureOrSuccess),
    );

    emit(state.copyWith(claimFailureOrSuccess: null));
  }
}
