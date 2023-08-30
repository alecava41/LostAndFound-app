part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    // Domain fields
    required List<News> news,

    // UI fields
    @Default("") String token,
    @Default(false) bool isLoading,
    @Default(false) bool hasLoadingError,
  }) = _NewsState;

  factory NewsState.initial() => const NewsState(
    news: [],
  );
}