part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<UserItem> lostItems,
    required List<UserItem> foundItems,
    required String token,
    Either<HomeFailure, Success>? homeFailureOrSuccess,
    // Unit comes from Dartz package and is equivalent to void.
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
      token: "",
      lostItems: [],
      foundItems: []
  );
}