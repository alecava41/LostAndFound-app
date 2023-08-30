part of 'answer_claim_bloc.dart';


@freezed
class AnswerClaimState with _$AnswerClaimState {
  const factory AnswerClaimState({
    required Item? item,

    // UI params
    @Default("") String token,
    @Default(true) bool isLoading,
    @Default(false) bool isInfoOpen,
    @Default(false) bool hasLoadingError,
    Either<Failure, Item>? claimFailureOrSuccess,
  }) = _AnswerClaimState;

  factory AnswerClaimState.initial() => const AnswerClaimState(
    item: null
  );
}