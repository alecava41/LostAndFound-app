import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_failure.freezed.dart';

@freezed
class NewsFailure with _$NewsFailure {
  const factory NewsFailure.networkError() = _NetworkError;
  const factory NewsFailure.serverError() = _ServerError;
}