part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    required Item? item,
    required int userId,

    @Default("") String token,
    @Default(true) bool isLoading,

    Either<Failure, Success>? loadFailureOrSuccess,
    Either<Failure, Success>? solveFailureOrSuccess,
    Either<Failure, Success>? deleteFailureOrSuccess,
    Either<Failure, Room>? roomCreationFailureOrSuccess,

  }) = _ItemState;

  factory ItemState.initial() => const ItemState(
    item: null,
    userId: 0
  );
}