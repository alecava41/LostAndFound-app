import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/features/item/domain/entities/search_item.dart';
import 'package:lost_and_found/features/item/domain/failures/search/search_failure.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';

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
        );
      },
    );
  }

  Future<void> _onSearchSubmit(Emitter<SearchState> emit) async {
    final isTypeValid = state.foundChecked || state.lostChecked;
    final isPositionValid = state.pos != const LatLng(0, 0);

    Either<SearchFailure, Success>? searchFailureOrSuccess;
    List<SearchItem> items = [];
    SearchPageState pageState = state.pageState;

    if (isTypeValid && isPositionValid) {
      emit(state.copyWith(pageState: SearchPageState.loadingPage, searchFailureOrSuccess: null));

      final params = SearchItemsParams(
          last: 0,
          range: 100,
          X: state.pos.longitude,
          Y: state.pos.latitude,
          order: SearchItemOrder.date,
          // TODO add order
          type: state.foundChecked && state.lostChecked
              ? SearchItemType.all
              : (state.foundChecked ? SearchItemType.found : SearchItemType.lost),
          category: state.categoryId,
          date: state.dateTime);

      // TODO error handling (must be done everywhere)
      final searchResponse = await _searchItemsUseCase(params);
      searchResponse.fold((failure) => searchFailureOrSuccess = const Left(SearchFailure.serverError()), (searchItems) {
        searchFailureOrSuccess = Right(SearchSuccess());
        items = searchItems;
        pageState = SearchPageState.resultPage;
      });
    } else {
      searchFailureOrSuccess = const Left(SearchFailure.validationError());
    }

    final session = await _secureStorage.getSessionInformation();

    emit(state.copyWith(
      searchFailureOrSuccess: searchFailureOrSuccess,
      pageState: pageState,
      results: items,
      token: session.token
    ));

    emit(state.copyWith(
        searchFailureOrSuccess: null
    ));
  }

  void _onDateSelected(Emitter<SearchState> emit, DateTime date) {
    emit(state.copyWith(dateTime: date));
  }

  void _onCategorySelected(Emitter<SearchState> emit, int id, String category) {
    emit(state.copyWith(category: category, categoryId: id));
  }

  void _onFoundCheckTriggered(Emitter<SearchState> emit) {
    emit(state.copyWith(foundChecked: !state.foundChecked));
  }

  void _onLostCheckTriggered(Emitter<SearchState> emit) {
    emit(state.copyWith(lostChecked: !state.lostChecked));
  }

  Future<void> _onPositionSelected(Emitter<SearchState> emit, LatLng pos) async {
    final addressOrFailure =
        await _getAddressFromPositionUseCase(GetAddressFromPositionParams(lat: pos.latitude, lon: pos.longitude));

    addressOrFailure.fold((failure) => {}, (address) =>
        emit(state.copyWith(address: address, pos: pos)));
  }

// Future<void> _onHomeCreatedOrRefreshed(Emitter<HomeState> emit) async {
//   Either<HomeFailure, Success>? loadFailureOrSuccess;
//
//   final foundItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.found, last: 0));
//   final lostItemsResponse = await _getUserItemsUseCase(GetUserItemsParams(type: ItemType.lost, last: 0));
//
//   foundItemsResponse.fold((failure) => loadFailureOrSuccess = Left(_mapRequestToFailure(failure)),
//           (success) => loadFailureOrSuccess = Right(UserItemsLoadSuccess()));
//
//   lostItemsResponse.fold((failure) => loadFailureOrSuccess = Left(_mapRequestToFailure(failure)),
//           (success) => loadFailureOrSuccess = Right(UserItemsLoadSuccess()));
//
//   final session = await _secureStorage.getSessionInformation();
//
//   emit(
//     state.copyWith(
//         lostItems: lostItemsResponse.getOrElse(() => []),
//         foundItems: foundItemsResponse.getOrElse(() => []),
//         homeFailureOrSuccess: loadFailureOrSuccess,
//         token: session.token
//     ),
//   );
// }
//
// HomeFailure _mapRequestToFailure(Failure failure) {
//   switch (failure.runtimeType) {
//     case NetworkFailure:
//       return const HomeFailure.networkError();
//     default:
//       return const HomeFailure.serverError();
//   }
// }
}
