import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/failures/home/home_failure.dart';
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
            homeCreated: () => _onHomeCreatedOrRefreshed(emit), homeRefreshed: () => _onHomeCreatedOrRefreshed(emit));
      },
    );
  }

  // TODO handle initial loading gracefully (show loading bar, then results)

  Future<void> _onHomeCreatedOrRefreshed(Emitter<HomeState> emit) async {
    Either<HomeFailure, Success>? loadFailureOrSuccess;

    final foundItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.found, last: 0));
    final lostItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.lost, last: 0));

    foundItemsResponse.fold((failure) => loadFailureOrSuccess = Left(_mapRequestToFailure(failure)),
        (success) => loadFailureOrSuccess = Right(UserItemsLoadSuccess()));

    lostItemsResponse.fold((failure) => loadFailureOrSuccess = Left(_mapRequestToFailure(failure)),
        (success) => loadFailureOrSuccess = Right(UserItemsLoadSuccess()));

    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
          lostItems: lostItemsResponse.getOrElse(() => []),
          foundItems: foundItemsResponse.getOrElse(() => []),
          homeFailureOrSuccess: loadFailureOrSuccess,
          token: session.token),
    );
  }

  HomeFailure _mapRequestToFailure(Failure failure) {
    switch (failure.runtimeType) {
      case NetworkFailure:
        return const HomeFailure.networkError();
      default:
        return const HomeFailure.serverError();
    }
  }
}
