import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item.dart';

import '../../../../../core/status/success.dart';
import '../../../../../core/status/failures.dart';
import '../../../domain/entities/item.dart';

part 'item_bloc.freezed.dart';

part 'item_event.dart';

part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final GetItemUseCase _getItemUseCase;
  final SecureStorage _secureStorage;

  ItemBloc(
      {required GetItemUseCase getItemUseCase,
      required SecureStorage secureStorage
      })
      : _getItemUseCase = getItemUseCase,
        _secureStorage = secureStorage,
        super(ItemState.initial()) {
    on<ItemEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          itemCreated: (id) => _onItemCreated(emit, id),
          itemRefreshed: () => _onItemRefreshed(emit),
        );
      },
    );
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
        isLoading: false, loadFailureOrSuccess: request, item: item, token: session.token, userId: session.user));
  }

  // TODO it would be better to refresh only claims for the item (not entire item)!
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

    emit(state.copyWith(
        isLoading: false, loadFailureOrSuccess: request, item: item, token: session.token, userId: session.user));
  }

}
