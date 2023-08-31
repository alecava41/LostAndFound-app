part of 'answer_question_bloc.dart';


@freezed
class AnswerQuestionState with _$AnswerQuestionState {
  const factory AnswerQuestionState({
    // Domain params
    required AnswerField answer,
    required Item? item,

    // UI params
    @Default("") String token,
    @Default(true) bool isLoading,
    @Default(false) bool hasLoadingError,
    @Default(false) bool showErrorMessage,
    @Default(false) bool isInfoOpen,
    Either<Failure, Item>? claimFailureOrSuccess,
    Either<Failure, Room>? roomCreationFailureOrSuccess,
  }) = _AnswerQuestionState;

  factory AnswerQuestionState.initial() => AnswerQuestionState(
    answer: AnswerField(""),
    token: "",
    item: null
  );
}