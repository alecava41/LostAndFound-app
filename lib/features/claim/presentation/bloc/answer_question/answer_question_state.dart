part of 'answer_question_bloc.dart';


@freezed
class AnswerQuestionState with _$AnswerQuestionState {
  const factory AnswerQuestionState({
    required AnswerField answer,
    required String token,
    required Item? item,
    @Default(true) bool isLoading,
    @Default(false) bool showErrorMessage,
    @Default(false) bool isInfoOpen,
    Either<Failure, Success>? loadFailureOrSuccess,
    Either<Failure, Success>? claimFailureOrSuccess,
  }) = _AnswerQuestionState;

  factory AnswerQuestionState.initial() => AnswerQuestionState(
    answer: AnswerField(""),
    token: "",
    item: null
  );
}