import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetUserItemsUseCase _getUserItemsUseCase;
  final SecureStorage _secureStorage;

  HomeBloc({required GetUserItemsUseCase getUserItemsUseCase, required SecureStorage secureStorage})
      : _getUserItemsUseCase = getUserItemsUseCase,
        _secureStorage = secureStorage,
        super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            homeCreated: () => _onHomeCreatedOrRefreshed(emit), homeRefreshed: () => _onHomeCreatedOrRefreshed(emit),
        homeSectionRefreshed: (type) => _onHomeSectionRefreshed(emit, type)
        );
      },
    );
  }

  // TODO handle initial loading gracefully (show loading bar, then results)

  Future<void> _onHomeCreatedOrRefreshed(Emitter<HomeState> emit) async {
    Either<Failure, Success>? loadFailureOrSuccess;

    final foundItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.found, last: 0));
    final lostItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.lost, last: 0));

    foundItemsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));

    lostItemsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));

    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
          lostItems: lostItemsResponse.getOrElse(() => []),
          foundItems: foundItemsResponse.getOrElse(() => []),
          homeFailureOrSuccess: loadFailureOrSuccess,
          token: session != null ? session.token : ""),
    );
  }

  Future<void> _onHomeSectionRefreshed(Emitter<HomeState> emit, ItemType type) async {
    final itemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: type, last: 0));

    if(itemsResponse.isRight()) {
      if (type == ItemType.found) {
        emit(state.copyWith(foundItems: itemsResponse.getOrElse(() => state.foundItems)));
      } else {
        emit(state.copyWith(lostItems: itemsResponse.getOrElse(() => state.lostItems)));
      }
    }
  }
}
