part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required List<UserItem> lostItems,
    required List<UserItem> foundItems,
    required String token,
    Either<Failure, Success>? homeFailureOrSuccess,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
      token: "",
      lostItems: [],
      foundItems: []
  );
}