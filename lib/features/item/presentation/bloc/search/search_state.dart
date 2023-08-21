part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    // Search parameters
    required ItemsTypeField itemsToSearch,
    required PositionField pos,
    required CategoryField cat,
    required DateTime? dateTime,
    required ResultOrder order,

    // Search results
    required List<SearchItem> results,

    // User-friendly fields
    @Default("") String category,
    @Default("") String address,
    @Default(false) bool isConnected,
    @Default(false) bool hasLocationPermissions,
    @Default(false) bool isLoadingPosition,
    @Default("") String token,

    // Fields to handle real search
    @Default(false) bool showError,
    @Default(false) bool hasPerformedFirstSearch,
    @Default(SearchPageState.filterPage) SearchPageState pageState,
    Either<Failure, Success>? searchFailureOrSuccess,
  }) = _SearchState;

  factory SearchState.initial() =>
      SearchState(
          itemsToSearch: ItemsTypeField(false, false),
          pos: PositionField(const LatLng(0, 0)),
          cat: CategoryField(-1),
          results: [],
          dateTime: null,
          order: ResultOrder.dateDescending,
      );
}

enum SearchPageState { loadingPage, resultPage, filterPage }

enum ResultOrder {
  alphabeticAscending,
  alphabeticDescending,
  dateAscending,
  dateDescending,
  distanceAscending,
  distanceDescending
}

extension LabelName on ResultOrder {
  String get name {
    switch (this) {
      case ResultOrder.alphabeticAscending:
        return 'A to Z';
      case ResultOrder.alphabeticDescending:
        return 'Z to A';
      case ResultOrder.dateAscending:
        return 'Oldest to Newest';
      case ResultOrder.dateDescending:
        return 'Newest to Oldest';
      case ResultOrder.distanceAscending:
        return 'Farthest to Nearest';
      case ResultOrder.distanceDescending:
        return 'Nearest to Farthest';
    }
  }
}