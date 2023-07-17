part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool foundChecked,
    required bool lostChecked,
    required List<SearchItem> results,
    required String address,
    required LatLng pos,
    required int category,
    required DateTime? dateTime,
    @Default(false) bool isConnected,
    @Default(false) bool hasLocationPermissions,
    @Default("") String token,
    Either<SearchFailure, Success>? searchFailureOrSuccess,
    // Unit comes from Dartz package and is equivalent to void.
  }) = _SearchState;

  factory SearchState.initial() => const SearchState(
      foundChecked: false,
      address: "",
      pos: LatLng(0, 0),
      lostChecked: false,
      category: 0,
      results: [],
      dateTime: null,
  );
}