part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    // Search parameters
    required bool foundChecked,
    required bool lostChecked,
    required List<SearchItem> results,
    @Default("") String address,
    required LatLng pos,
    @Default("") String category,
    required int categoryId,
    required DateTime? dateTime,
    @Default(false) bool isConnected,
    @Default(false) bool hasLocationPermissions,
    @Default("") String token,

    // Fields to handle real search
    @Default(SearchPageState.filterPage) SearchPageState pageState,
    Either<SearchFailure, Success>? searchFailureOrSuccess,
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      foundChecked: false,
      pos: LatLng(0, 0),
      lostChecked: false,
      categoryId: 0,
      results: [],
      dateTime: null,
  );
}

enum SearchPageState {
  loadingPage,
  resultPage,
  filterPage
}