part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    required List<News> news,
    Either<NewsFailure, Success>? loadFailureOrSuccess,
    required String token,
  }) = _NewsState;

  factory NewsState.initial() => const NewsState(
    news: [],
    token: '',
  );
}