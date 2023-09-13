import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/status/failures.dart';
import '../../../domain/services/geolocation_service.dart';
import '../../../status/success.dart';

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
          selectPositionCreated: (pos) => _onSelectPositionCreated(emit, pos),
          selectCurrentPosition: () => _onSelectCurrentPosition(emit),
        );
      },
    );
  }

  Future<void> _onSelectCurrentPosition(Emitter<SelectPositionState> emit) async {
    final isDeviceConnected = await _networkInfo.isConnected;
    bool isServiceFailure = false;
    bool isPermissionPermanentlyDeniedFailure = false;
    bool isPermissionNegated = false;
    LatLng pos = state.userCurrentPos;

    Either<Failure, Success>? positionFailureOrSuccess;

    final serviceOrFailure = await _geolocationService.getGeoPosition(true);
    serviceOrFailure.fold(
        (failure) => {
              (isServiceFailure, isPermissionPermanentlyDeniedFailure, isPermissionNegated) = _mapFailureToState(failure),
              positionFailureOrSuccess = const Left(Failure.genericFailure())
            },
        (position) => {
              positionFailureOrSuccess =
                  isDeviceConnected ? const Right(Success.genericSuccess()) : const Left(Failure.genericFailure()),
              pos = LatLng(position.latitude, position.longitude)
            });

    emit(state.copyWith(
      hasPermissions: isPermissionPermanentlyDeniedFailure == false && isPermissionNegated == false,
      isPermissionNegated: isPermissionNegated,
      isDeviceConnected: isDeviceConnected,
      isServiceAvailable: isServiceFailure == false,
      userCurrentPos: pos,
      lastPositionUpdate: DateTime.now(),
      isPermissionPermanentlyNegated: isPermissionPermanentlyDeniedFailure,
      positionFailureOrSuccess: positionFailureOrSuccess,
    ));
  }

  Future<void> _onSelectPositionCreated(Emitter<SelectPositionState> emit, LatLng pos) async {
    emit(state.copyWith(userCurrentPos: pos));
  }

  (bool, bool, bool) _mapFailureToState(Failure failure) {
    var isServiceFailure = false;
    var isPermissionPermanentlyDenied = false;
    var isPermissionNegated = false;

    failure.maybeWhen<void>(
        geolocationFailure: (reason) {
          switch (reason) {
            case GeolocationError.serviceNotAvailable:
              isServiceFailure = true;
            case GeolocationError.permissionPermanentlyDenied:
              isPermissionPermanentlyDenied = true;
            case GeolocationError.permissionDenied:
              isPermissionNegated = true;
          }
        },
        orElse: () {});

    return (isServiceFailure, isPermissionPermanentlyDenied, isPermissionNegated);
  }
}
