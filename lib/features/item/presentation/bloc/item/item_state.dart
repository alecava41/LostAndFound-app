part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    // Domain fields
    required Item? item,
    required int userId,

    // UI fields
    @Default("") String token,
    @Default(true) bool isLoading,
    @Default(false) bool hasLoadingError,
    Either<Failure, Success>? solveFailureOrSuccess,
    Either<Failure, Success>? deleteFailureOrSuccess,
    Either<Failure, Room>? roomCreationFailureOrSuccess,
  }) = _ItemState;

  factory ItemState.initial() => const ItemState(item: null, userId: 0);
}
