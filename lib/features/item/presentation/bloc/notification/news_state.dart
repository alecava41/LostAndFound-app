part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    required List<News> news,
    @Default("") String token,
    @Default(false) bool isLoading,
    Either<Failure, Success>? loadFailureOrSuccess,
  }) = _NewsState;

  factory NewsState.initial() => const NewsState(
    news: [],
  );
}