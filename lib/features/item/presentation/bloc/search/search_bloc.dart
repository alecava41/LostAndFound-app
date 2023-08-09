import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartx/dartx.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/features/item/domain/entities/search_item.dart';
import 'package:lost_and_found/features/item/domain/fields/search/category.dart';
import 'package:lost_and_found/features/item/domain/fields/search/items_type.dart';
import 'package:lost_and_found/features/item/domain/fields/search/position.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';

part 'search_bloc.freezed.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchItemsUseCase _searchItemsUseCase;
  final GetAddressFromPositionUseCase _getAddressFromPositionUseCase;
  final SecureStorage _secureStorage;

  SearchBloc(
      {required SearchItemsUseCase searchItemsUseCase,
      required SecureStorage secureStorage,
      required GetAddressFromPositionUseCase getAddressFromPositionUseCase})
      : _searchItemsUseCase = searchItemsUseCase,
        _secureStorage = secureStorage,
        _getAddressFromPositionUseCase = getAddressFromPositionUseCase,
        super(SearchState.initial()) {
    on<SearchEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          resetFilters: () => emit(SearchState.initial()),
          foundCheckTriggered: () => _onFoundCheckTriggered(emit),
          lostCheckTriggered: () => _onLostCheckTriggered(emit),
          positionSelected: (LatLng pos) => _onPositionSelected(emit, pos),
          categorySelected: (id, category) => _onCategorySelected(emit, id, category),
          dateSelected: (date) => _onDateSelected(emit, date),
          searchSubmitted: () => _onSearchSubmit(emit),
          showFilters: () => _onShowFilters(emit),
        );
      },
    );
  }

  void _onShowFilters(Emitter<SearchState> emit) {
    emit(state.copyWith(pageState: SearchPageState.filterPage));
  }

  Future<void> _onSearchSubmit(Emitter<SearchState> emit) async {
    final isTypeValid = state.itemsToSearch.value.isRight();
    final isPositionValid = state.pos.value.isRight();
    final isCategoryValid = state.cat.value.isRight();

    Either<Failure, Success>? searchFailureOrSuccess;
    List<SearchItem> items = [];
    SearchPageState pageState = state.pageState;

    if (isTypeValid && isPositionValid && isCategoryValid) {
      emit(state.copyWith(pageState: SearchPageState.loadingPage, searchFailureOrSuccess: null));

      final itemsToSearch = state.itemsToSearch.value.getOrElse(() => const Pair(false, false));
      final pos = state.pos.value.getOrElse(() => const LatLng(0, 0));

      final params = SearchItemsParams(
          last: 0,
          range: 100,
          X: pos.longitude,
          Y: pos.latitude,
          order: SearchItemOrder.date,
          // TODO add order
          type: itemsToSearch.first && itemsToSearch.second
              ? SearchItemType.all
              : (itemsToSearch.first ? SearchItemType.found : SearchItemType.lost),
          category: state.cat.value.getOrElse(() => 0),
          date: state.dateTime);

      // TODO error handling (must be done everywhere)
      final searchResponse = await _searchItemsUseCase(params);
      searchResponse.fold((failure) => searchFailureOrSuccess = Left(failure), (searchItems) {
        searchFailureOrSuccess = const Right(Success.genericSuccess());
        items = searchItems;
        pageState = SearchPageState.resultPage;
      });
    } else {
      searchFailureOrSuccess = const Left(Failure.validationFailure("Specify at least type and location."));
    }

    final session = await _secureStorage.getSessionInformation();

    emit(state.copyWith(
      searchFailureOrSuccess: searchFailureOrSuccess,
      pageState: pageState,
      results: items,
      token: session != null ? session.token : "",
    ));

    emit(state.copyWith(
      searchFailureOrSuccess: null,
      showError: true,
    ));
  }

  void _onDateSelected(Emitter<SearchState> emit, DateTime date) {
    emit(state.copyWith(dateTime: date));
  }

  void _onCategorySelected(Emitter<SearchState> emit, int id, String category) {
    emit(state.copyWith(category: category, cat: CategoryField(id)));
  }

  void _onFoundCheckTriggered(Emitter<SearchState> emit) {
    final itemsToSearch = state.itemsToSearch.value.getOrElse(() => const Pair(false, false));
    emit(state.copyWith(itemsToSearch: ItemsTypeField(!itemsToSearch.first, itemsToSearch.second)));
  }

  void _onLostCheckTriggered(Emitter<SearchState> emit) {
    final itemsToSearch = state.itemsToSearch.value.getOrElse(() => const Pair(false, false));
    emit(state.copyWith(itemsToSearch: ItemsTypeField(itemsToSearch.first, !itemsToSearch.second)));
  }

  Future<void> _onPositionSelected(Emitter<SearchState> emit, LatLng pos) async {
    emit(state.copyWith(isLoadingPosition: true));

    final addressOrFailure =
        await _getAddressFromPositionUseCase(GetAddressFromPositionParams(lat: pos.latitude, lon: pos.longitude));

    addressOrFailure.fold((failure) => emit(state.copyWith(isLoadingPosition: false)),
        (address) => emit(state.copyWith(address: address, pos: PositionField(pos), isLoadingPosition: false)));
  }
}
