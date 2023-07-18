import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/status/failures.dart';
import '../../../domain/services/geolocation_service.dart';

part 'select_position_bloc.freezed.dart';

part 'select_position_event.dart';

part 'select_position_state.dart';

class SelectPositionBloc extends Bloc<SelectPositionEvent, SelectPositionState> {
  final NetworkInfo _networkInfo;
  final _geolocationService = const GeoLocationService();

  SelectPositionBloc({required NetworkInfo networkInfo})
      : _networkInfo = networkInfo,
        super(SelectPositionState.initial()) {
    on<SelectPositionEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          selectPositionCreated: () => _onSelectPositionCreated(emit),
          selectCurrentPosition: () => _onSelectCurrentPosition(emit),
          selectedPositionChanged: (LatLng pos) => _onSelectedPositionChanged(emit, pos),
        );
      },
    );
  }

  void _onSelectedPositionChanged(Emitter<SelectPositionState> emit, LatLng pos) {
    emit(state.copyWith(markerPos: pos));
  }

  Future<void> _onSelectCurrentPosition(Emitter<SelectPositionState> emit) async {
    final positionOrFailure = await _geolocationService.getGeoPosition();
    positionOrFailure.fold(
        (failure) => {}, (pos) => emit(state.copyWith(markerPos: LatLng(pos.latitude, pos.longitude))));
  }

  Future<void> _onSelectPositionCreated(Emitter<SelectPositionState> emit) async {
    final isDeviceConnected = await _networkInfo.isConnected;
    bool isServiceFailure = false;
    bool isPermissionPermanentlyDeniedFailure = false;

    final positionOrFailure = await _geolocationService.getGeoPosition();
    positionOrFailure.fold(
        (failure) => (isServiceFailure, isPermissionPermanentlyDeniedFailure) =
            _mapFailureToState(failure),
        (success) => {});

    emit(state.copyWith(
        hasPermissions: isPermissionPermanentlyDeniedFailure == false,
        isDeviceConnected: isDeviceConnected,
        isServiceAvailable: isServiceFailure == false,
        isPermissionPermanentlyNegated: isPermissionPermanentlyDeniedFailure));
  }

  (bool, bool) _mapFailureToState(Failure failure) {
    var isServiceFailure = false;
    var isPermissionPermanentlyDenied = false;

    switch (failure.runtimeType) {
      case GeolocationServiceFailure:
        isServiceFailure = true;
      case GeolocationPermissionPermanentlyDeniedFailure:
        isPermissionPermanentlyDenied = true;
    }

    return (isServiceFailure, isPermissionPermanentlyDenied);
  }
}
