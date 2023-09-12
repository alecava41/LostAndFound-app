import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/domain/entities/current_country.dart';
import 'package:lost_and_found/core/domain/usecases/get_current_country_usecase.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_locale_usecase.dart';
import 'package:lost_and_found/utils/utility.dart';

import '../../../data/secure_storage/secure_storage.dart';
import '../../../status/failures.dart';
import '../../../status/success.dart';

part 'app_global_bloc.freezed.dart';

part 'app_global_event.dart';

part 'app_global_state.dart';

class AppGlobalBloc extends Bloc<AppGlobalEvent, AppGlobalState> {
  final UpdateLocaleUseCase _updateLocaleUseCase;
  final GetCurrentCountryUseCase _getCurrentCountryUseCase;
  final SecureStorage _storage;

  AppGlobalBloc(
      {required UpdateLocaleUseCase updateLocaleUseCase,
      required GetCurrentCountryUseCase getCurrentCountryUseCase,
      required SecureStorage storage})
      : _storage = storage,
        _updateLocaleUseCase = updateLocaleUseCase,
        _getCurrentCountryUseCase = getCurrentCountryUseCase,
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
    final response = await _updateLocaleUseCase(UpdateLocaleParams(locale: newLocale.languageCode));

    emit(state.copyWith(locale: newLocale, response: response));
    emit(state.copyWith(response: null));
  }

  Future<void> _onAppCreated(Emitter<AppGlobalState> emit) async {
    final lastLocale = await _storage.getLastSetLocale();
    final currentCountryResponse = await _getCurrentCountryUseCase(NoParams());

    emit(state.copyWith(
      locale: lastLocale != null ? Locale(lastLocale) : const Locale("en"),
      defaultPosition: getCenterPositionBasedOnLocale(currentCountryResponse
          .getOrElse(
              () => lastLocale != null ? CurrentCountry(countryCode: lastLocale) : CurrentCountry(countryCode: "en"))
          .countryCode),
    ));
  }
}
