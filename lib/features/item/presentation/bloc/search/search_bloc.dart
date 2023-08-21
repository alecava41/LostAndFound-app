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
          sortParameterChanged: (order) => _onChangeSortingParameter(emit, order),
          searchPageChanged: (page) => _onSearchPageChanged(emit, page),
        );
      },
    );
  }

  void _onSearchPageChanged(Emitter<SearchState> emit, SearchPageState page) {
    emit(state.copyWith(pageState: page));
  }

  void _onShowFilters(Emitter<SearchState> emit) {
    emit(
      state.copyWith(
        pageState: SearchPageState.filterPage,
      ),
    );
  }

  Future<void> _onSearchSubmit(Emitter<SearchState> emit) async {
    final isTypeValid = state.itemsToSearch.value.isRight();
    final isPositionValid = state.pos.value.isRight();
    final isCategoryValid = state.cat.value.isRight();

    bool hasPerformedSearch = false;

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
          type: itemsToSearch.first && itemsToSearch.second
              ? SearchItemType.all
              : (itemsToSearch.first ? SearchItemType.found : SearchItemType.lost),
          category: state.cat.value.getOrElse(() => 0),
          date: state.dateTime);

      final searchResponse = await _searchItemsUseCase(params);
      searchResponse.fold((failure) => searchFailureOrSuccess = Left(failure), (searchItems) {
        searchFailureOrSuccess = const Right(Success.genericSuccess());
        items = searchItems;
        pageState = SearchPageState.resultPage;
        hasPerformedSearch = true;
      });
    }

    final session = await _secureStorage.getSessionInformation();

    // Sort items
    items = sortItems(items, ResultOrder.dateDescending);

    emit(
      state.copyWith(
        searchFailureOrSuccess: searchFailureOrSuccess,
        pageState: pageState,
        results: items,
        order: ResultOrder.dateDescending,
        hasPerformedFirstSearch: hasPerformedSearch,
        token: session != null ? session.token : "",
        showError: true,
      ),
    );

    emit(state.copyWith(searchFailureOrSuccess: null));
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

  void _onChangeSortingParameter(Emitter<SearchState> emit, ResultOrder order) {
    final items = sortItems(state.results, order);
    emit(state.copyWith(results: items, order: order));
  }

  List<SearchItem> sortItems(List<SearchItem> items, ResultOrder order) {
    List<SearchItem> orderedItems = List.from(items);

    switch (order) {
      case ResultOrder.alphabeticAscending:
        orderedItems.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
      case ResultOrder.alphabeticDescending:
        orderedItems.sort((b, a) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
      case ResultOrder.dateAscending:
        orderedItems.sort((a, b) => a.date.compareTo(b.date));
      case ResultOrder.dateDescending:
        orderedItems.sort((b, a) => a.date.compareTo(b.date));
      case ResultOrder.distanceAscending:
        orderedItems.sort((a, b) => a.distance.compareTo(b.distance));
      case ResultOrder.distanceDescending:
        orderedItems.sort((b, a) => a.distance.compareTo(b.distance));
    }

    return orderedItems;
  }
}
