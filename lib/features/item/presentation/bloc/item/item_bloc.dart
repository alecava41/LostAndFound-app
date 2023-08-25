import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/chat/domain/usecases/create_room_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/insert_read_claim_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/solve_item_usecase.dart';

import '../../../../../core/status/success.dart';
import '../../../../../core/status/failures.dart';
import '../../../domain/entities/item.dart';

part 'item_bloc.freezed.dart';

part 'item_event.dart';

part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final GetItemUseCase _getItemUseCase;
  final SolveItemUseCase _solveItemUseCase;
  final DeleteItemUseCase _deleteItemUseCase;
  final InsertReadClaimUseCase _insertReadClaimUseCase;

  final CreateRoomUseCase _createRoomUseCase;

  final SecureStorage _secureStorage;

  ItemBloc({
    required GetItemUseCase getItemUseCase,
    required SolveItemUseCase solveItemUseCase,
    required DeleteItemUseCase deleteItemUseCase,
    required InsertReadClaimUseCase insertReadClaimUseCase,
    required SecureStorage secureStorage,
    required CreateRoomUseCase createRoomUseCase,
  })  : _getItemUseCase = getItemUseCase,
        _solveItemUseCase = solveItemUseCase,
        _deleteItemUseCase = deleteItemUseCase,
        _insertReadClaimUseCase = insertReadClaimUseCase,
        _secureStorage = secureStorage,
        _createRoomUseCase = createRoomUseCase,
        super(ItemState.initial()) {
    on<ItemEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          itemCreated: (id) => _onItemCreated(emit, id),
          itemRefreshed: () => _onItemRefreshed(emit),
          itemSolved: () => _onItemSolved(emit),
          itemDeleted: () => _onItemDeleted(emit),
          claimRead: (id) => _onClaimRead(emit, id),
          createChatRoom: (id2, username2) => _onChatRoomCreation(emit, id2, username2),
        );
      },
    );
  }

  Future<void> _onChatRoomCreation(Emitter<ItemState> emit, int id2, username2) async {
    final params = CreateRoomParams(
      id1: state.userId,
      id2: id2,
      username1: (await _secureStorage.getCredentialsForChatLogin()).second,
      username2: username2,
      itemId: state.item!.id,
    );

    final response = await _createRoomUseCase(params);

    emit(state.copyWith(roomCreationFailureOrSuccess: response));
    emit(state.copyWith(roomCreationFailureOrSuccess: null));
  }

  // TODO (@alecava41) when claim managed (both sent or received) need to update it, otherwise if user open it again he will se possibility to manage the claim again

  Future<void> _onClaimRead(Emitter<ItemState> emit, int claimId) async {
    final response = await _insertReadClaimUseCase(InsertReadClaimParams(claimId: claimId));
    response.fold((_) => null, (_) {
      final token = state.token;
      state.item!.claims!.firstWhere((element) => element.id == claimId).opened = true;
      emit(state.copyWith(token: ""));
      emit(state.copyWith(token: token));
    });
  }

  Future<void> _onItemCreated(Emitter<ItemState> emit, int id) async {
    emit(state.copyWith(isLoading: true));

    Item? item;
    Either<Failure, Success>? request;

    final itemResponse = await _getItemUseCase(GetItemParams(id: id));
    itemResponse.fold((failure) => request = Left(failure), (it) {
      item = it;
      request = const Right(Success.genericSuccess());
    });

    final session = await _secureStorage.getSessionInformation();

    emit(state.copyWith(
      isLoading: false,
      loadFailureOrSuccess: request,
      item: item,
      token: session != null ? session.token : "",
      userId: session != null ? session.user : 0,
    ));
    emit(state.copyWith(loadFailureOrSuccess: null));
  }

  Future<void> _onItemRefreshed(Emitter<ItemState> emit) async {
    emit(state.copyWith(isLoading: true));

    Item? item;
    Either<Failure, Success>? request;

    final itemResponse = await _getItemUseCase(GetItemParams(id: state.item!.id));
    itemResponse.fold((failure) => request = Left(failure), (it) {
      item = it;
      request = const Right(Success.genericSuccess());
    });

    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
        isLoading: false,
        loadFailureOrSuccess: request,
        item: item,
        token: session != null ? session.token : "",
        userId: session != null ? session.user : 0,
      ),
    );
    emit(state.copyWith(loadFailureOrSuccess: null));
  }

  Future<void> _onItemSolved(Emitter<ItemState> emit) async {
    emit(state.copyWith(isLoading: true));

    Either<Failure, Success>? request;

    final itemResponse = await _solveItemUseCase(SolveItemParams(itemId: state.item!.id));
    itemResponse.fold((failure) => request = Left(failure), (it) => request = const Right(Success.genericSuccess()));

    emit(state.copyWith(isLoading: false, solveFailureOrSuccess: request));
    emit(state.copyWith(solveFailureOrSuccess: null));
  }

  Future<void> _onItemDeleted(Emitter<ItemState> emit) async {
    emit(state.copyWith(isLoading: true));

    Either<Failure, Success>? request;

    final itemResponse = await _deleteItemUseCase(DeleteItemParams(itemId: state.item!.id));
    itemResponse.fold((failure) => request = Left(failure), (it) => request = const Right(Success.genericSuccess()));

    emit(state.copyWith(isLoading: false, deleteFailureOrSuccess: request));
    emit(state.copyWith(deleteFailureOrSuccess: null));
  }
}
