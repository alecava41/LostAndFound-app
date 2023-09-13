import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';

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
          homeCreated: () => _onHomeCreatedOrRefreshed(emit, true),
          homeRefreshed: () => _onHomeCreatedOrRefreshed(emit, false),
          homeSectionRefreshed: (type) => _onHomeSectionRefreshed(emit, type),
          restoreInitial: () => emit(HomeState.initial()),
        );
      },
    );
  }

  Future<void> _onHomeCreatedOrRefreshed(Emitter<HomeState> emit, bool creation) async {
    emit(state.copyWith(hasLoadingError: false));

    if (creation) {
      emit(state.copyWith(isLoading: true));
    }

    final foundItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.found));
    final lostItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.lost));

    final session = await _secureStorage.getSessionInformation();

    final foundItems = foundItemsResponse.getOrElse(() => []);
    foundItems.sort((a, b) => a.approvedClaims > b.approvedClaims ? 1 : -1);

    emit(
      state.copyWith(
          lostItems: lostItemsResponse.getOrElse(() => []),
          foundItems: foundItems,
          hasLoadingError: foundItemsResponse.isLeft() || lostItemsResponse.isLeft(),
          token: session != null ? session.token : ""),
    );

    emit(state.copyWith(token: ""));
    emit(state.copyWith(token: state.token));

    if (creation) {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _onHomeSectionRefreshed(Emitter<HomeState> emit, ItemType type) async {
    final itemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: type));

    if (itemsResponse.isRight()) {
      if (type == ItemType.found) {
        final foundItems = itemsResponse.getOrElse(() => state.foundItems);
        foundItems.sort((a, b) => a.approvedClaims > b.approvedClaims ? 1 : -1);

        emit(state.copyWith(foundItems: foundItems));
      } else {
        emit(state.copyWith(lostItems: itemsResponse.getOrElse(() => state.lostItems)));
      }

      emit(state.copyWith(token: ""));
      emit(state.copyWith(token: state.token));
    }
  }
}
