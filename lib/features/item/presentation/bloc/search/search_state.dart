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
    Either<Failure, Success>? searchFailureOrSuccess,

    // Fields to handle real search
    @Default(false) bool showError,
    @Default(false) bool hasSearchError,
    @Default(false) bool isLoadingResults,
    @Default(SearchPageState.filterPage) SearchPageState pageState,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
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
  String getTranslatedName(BuildContext context) {
    switch (this) {
      case ResultOrder.alphabeticAscending:
        return AppLocalizations.of(context)!.orderAZ;
      case ResultOrder.alphabeticDescending:
        return AppLocalizations.of(context)!.orderZA;
      case ResultOrder.dateAscending:
        return AppLocalizations.of(context)!.orderOldestNewest;
      case ResultOrder.dateDescending:
        return AppLocalizations.of(context)!.orderNewestOldest;
      case ResultOrder.distanceAscending:
        return AppLocalizations.of(context)!.orderFarthestNearest;
      case ResultOrder.distanceDescending:
        return AppLocalizations.of(context)!.orderNearestFarthest;
    }
  }
}
