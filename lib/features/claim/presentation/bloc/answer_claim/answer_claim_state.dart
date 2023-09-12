part of 'answer_claim_bloc.dart';


@freezed
class AnswerClaimState with _$AnswerClaimState {
  const factory AnswerClaimState({
    required Item? item,

    // UI params
    @Default("") String token,
    @Default(true) bool isLoading,
    @Default(false) bool isSubmittingAccept,
    @Default(false) bool isSubmittingReject,
    @Default(false) bool hasLoadingError,
    Either<Failure, Item>? claimFailureOrSuccess,
    Either<Failure, Room>? roomCreationFailureOrSuccess,
  }) = _AnswerClaimState;

  factory AnswerClaimState.initial() => const AnswerClaimState(
    item: null
  );
}