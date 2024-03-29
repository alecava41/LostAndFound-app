part of 'app_global_bloc.dart';

@freezed
class AppGlobalState with _$AppGlobalState {
  const factory AppGlobalState({
    required Locale locale,
    required LatLng defaultPosition,
    required ThemeMode theme,

    Either<Failure, Success>? response,
  }) = _AppGlobalState;

  factory AppGlobalState.initial() => AppGlobalState(
    locale: const Locale("en"),
    defaultPosition: getCenterPositionBasedOnLocale("en"),
    theme: ThemeMode.system,
  );
}