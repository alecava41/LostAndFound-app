part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.newsCreated() = _NewsCreated;
  const factory NewsEvent.newsRefreshed() = _NewsRefreshed;
  const factory NewsEvent.newsRead(int id) = _NewsRead;
}