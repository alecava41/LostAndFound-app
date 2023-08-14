import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/utils/constants.dart';

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

    Either<Failure, Success>? positionFailureOrSuccess;

    final serviceOrFailure = await _geolocationService.getGeoPosition();
    serviceOrFailure.fold(
        (failure) => {
              (isServiceFailure, isPermissionPermanentlyDeniedFailure) = _mapFailureToState(failure),
              positionFailureOrSuccess = const Left(Failure.genericFailure())
            },
        (success) => positionFailureOrSuccess =
            isDeviceConnected ? const Right(Success.genericSuccess()) : const Left(Failure.genericFailure()));


    emit(state.copyWith(
        hasPermissions: isPermissionPermanentlyDeniedFailure == false,
        isDeviceConnected: isDeviceConnected,
        isServiceAvailable: isServiceFailure == false,
        isPermissionPermanentlyNegated: isPermissionPermanentlyDeniedFailure,
        positionFailureOrSuccess: positionFailureOrSuccess));

    final positionOrFailure = await _geolocationService.getGeoPosition();
    positionOrFailure.fold(
        (failure) => {},
        (pos) => emit(state.copyWith(
              userCurrentPos: LatLng(pos.latitude, pos.longitude),
              lastPositionUpdate: DateTime.now(),
            )));
  }

  Future<void> _onSelectPositionCreated(Emitter<SelectPositionState> emit, LatLng pos) async {
    final isDeviceConnected = await _networkInfo.isConnected;
    bool isServiceFailure = false;
    bool isPermissionPermanentlyDeniedFailure = false;

    final positionOrFailure = await _geolocationService.getGeoPosition();
    positionOrFailure.fold(
        (failure) => (isServiceFailure, isPermissionPermanentlyDeniedFailure) = _mapFailureToState(failure),
        (success) => {});

    emit(state.copyWith(
        hasPermissions: isPermissionPermanentlyDeniedFailure == false,
        isDeviceConnected: isDeviceConnected,
        isServiceAvailable: isServiceFailure == false,
        isPermissionPermanentlyNegated: isPermissionPermanentlyDeniedFailure,
        userCurrentPos: pos));
  }

  (bool, bool) _mapFailureToState(Failure failure) {
    var isServiceFailure = false;
    var isPermissionPermanentlyDenied = false;

    failure.maybeWhen<void>(
        geolocationFailure: (reason) {
          switch (reason) {
            case GeolocationError.serviceNotAvailable:
              isServiceFailure = true;
            case GeolocationError.permissionPermanentlyDenied:
              isPermissionPermanentlyDenied = true;
            case GeolocationError.permissionDenied:
              {}
          }
        },
        orElse: () {});

    return (isServiceFailure, isPermissionPermanentlyDenied);
  }
}
