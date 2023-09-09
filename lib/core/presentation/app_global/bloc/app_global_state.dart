part of 'app_global_bloc.dart';

@freezed
class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    required Locale locale,
  }) = _AppGlobalState;

  factory AppGlobalState.initial() => const AppGlobalState(
    locale: Locale("en")
  );
}