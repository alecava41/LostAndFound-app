part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    required Item? item,
    required int userId,
    required String token,
    @Default(true) bool isLoading,

    Either<Failure, Success>? loadFailureOrSuccess,
    Either<Failure, Success>? solveFailureOrSuccess,
    Either<Failure, Success>? deleteFailureOrSuccess,
  }) = _ItemState;

  factory ItemState.initial() => const ItemState(
    item: null,
    token: "",
    userId: 0
  );
}