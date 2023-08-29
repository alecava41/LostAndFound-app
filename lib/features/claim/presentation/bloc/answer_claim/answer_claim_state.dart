part of 'answer_claim_bloc.dart';


@freezed
class AnswerClaimState with _$AnswerClaimState {
  const factory AnswerClaimState({
    required String token,
    required Item? item,
    @Default(true) bool isLoading,
    @Default(false) bool isInfoOpen,
    Either<Failure, Success>? loadFailureOrSuccess,
    Either<Failure, Item>? claimFailureOrSuccess,
  }) = _AnswerClaimState;

  factory AnswerClaimState.initial() => const AnswerClaimState(
    token: "",
    item: null
  );
}