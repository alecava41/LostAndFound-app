part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<UserItem> lostItems,
    required List<UserItem> foundItems,

    // Additional parameters
    @Default("") String token,
    @Default(false) bool isLoading,
    @Default(false) bool hasLoadingError,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(token: "", lostItems: [], foundItems: []);
}
