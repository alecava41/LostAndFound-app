part of 'app_global_bloc.dart';

@freezed
class AppGlobalEvent with _$AppGlobalEvent {
  const factory AppGlobalEvent.appCreated() = _AppCreated;
  const factory AppGlobalEvent.localeChanged(Locale locale) = _LocaleChanged;
  const factory AppGlobalEvent.themeChanged(ThemeMode theme) = _ThemeChanged;
}