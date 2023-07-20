part of 'item_bloc.dart';

@freezed
class ItemState with _$ItemState {
  const factory ItemState({
    required Item? item,
    required String token,
    @Default(true) bool isLoading,
    Either<Failure, Success>? loadFailureOrSuccess,
  }) = _ItemState;

  factory ItemState.initial() => const ItemState(
    item: null,
    token: ""
  );
}