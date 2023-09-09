import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/secure_storage/secure_storage.dart';

part 'app_global_bloc.freezed.dart';

part 'app_global_event.dart';

part 'app_global_state.dart';

class AppGlobalBloc extends Bloc<AppGlobalEvent, AppGlobalState> {
  final SecureStorage _storage;

  AppGlobalBloc({required SecureStorage storage})
      : _storage = storage,
        super(AppGlobalState.initial()) {
    on<AppGlobalEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          appCreated: () => _onAppCreated(emit),
          localeChanged: (locale) => _onLocaleChanged(emit, locale),
        );
      },
    );
  }

  Future<void> _onLocaleChanged(Emitter<AppGlobalState> emit, Locale newLocale) async {
    await _storage.setLocale(newLocale.languageCode);
    emit(state.copyWith(locale: newLocale));
  }

  Future<void> _onAppCreated(Emitter<AppGlobalState> emit) async {
    final lastLocale = await _storage.getLastSetLocale();

    emit(state.copyWith(locale: lastLocale != null ? Locale(lastLocale) : const Locale("en")));
  }
}
