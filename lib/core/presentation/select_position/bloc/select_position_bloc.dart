import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/domain/fields/address.dart';
import 'package:lost_and_found/core/domain/usecases/get_position_from_address_usecase.dart';

import '../../../../../core/network/network_info.dart';
import '../../../../../core/status/failures.dart';
import '../../../domain/services/geolocation_service.dart';
import '../../../status/success.dart';

part 'select_position_bloc.freezed.dart';

part 'select_position_event.dart';

part 'select_position_state.dart';

class SelectPositionBloc extends Bloc<SelectPositionEvent, SelectPositionState> {
  final NetworkInfo _networkInfo;
  final GetPositionFromAddressUseCase _getPositionFromAddressUseCase;
  final _geolocationService = const GeoLocationService();

  SelectPositionBloc(
      {required NetworkInfo networkInfo, required GetPositionFromAddressUseCase getPositionFromAddressUseCase})
      : _networkInfo = networkInfo,
        _getPositionFromAddressUseCase = getPositionFromAddressUseCase,
        super(SelectPositionState.initial()) {
    on<SelectPositionEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          selectPositionCreated: (pos, address) => _onSelectPositionCreated(emit, pos, address),
          selectCurrentPosition: () => _onSelectCurrentPosition(emit),
          searchPosition: () => _onSearchPosition(emit),
          addressFieldChanged: (value) => _onAddressFieldChanged(emit, value),
          fakeContainerToggle: (toggle) => _onFakeContainerToggled(emit, toggle),
        );
      },
    );
  }

  Future<void> _onSearchPosition(Emitter<SelectPositionState> emit) async {
    emit(state.copyWith(isSearchingAddressPosition: true));

    Either<Failure, Success>? addressFailureOrSuccess;
    LatLng pos = state.userCurrentPos;

    if (state.address.value.isRight()) {
      final response = await _getPositionFromAddressUseCase(
          GetPositionFromAddressParams(address: state.address.value.getOrElse(() => "")));
      response.fold(
          (_) => addressFailureOrSuccess = const Left(Failure.geolocationFailure(GeolocationError.addressNotResolved)),
          (newPos) {
        pos = newPos;
        addressFailureOrSuccess = const Right(Success.genericSuccess());
      });
    }

    emit(state.copyWith(
      showError: true,
      addressFailureOrSuccess: addressFailureOrSuccess,
      isSearchingAddressPosition: false,
      isContainerExpanded: addressFailureOrSuccess == null || addressFailureOrSuccess!.isLeft(),
      userCurrentPos: pos,
    ));
    emit(state.copyWith(addressFailureOrSuccess: null));
  }

  void _onFakeContainerToggled(Emitter<SelectPositionState> emit, bool toggle) {
    emit(state.copyWith(isContainerExpanded: toggle));
  }

  void _onAddressFieldChanged(Emitter<SelectPositionState> emit, String value) {
    emit(state.copyWith(address: AddressField(value)));
  }

  Future<void> _onSelectCurrentPosition(Emitter<SelectPositionState> emit) async {
    emit(state.copyWith(isSearchingCurrentPosition: true));

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
      isSearchingCurrentPosition: false,
      lastPositionUpdate: DateTime.now(),
      isPermissionPermanentlyNegated: isPermissionPermanentlyDeniedFailure,
      positionFailureOrSuccess: positionFailureOrSuccess,
    ));
  }

  Future<void> _onSelectPositionCreated(Emitter<SelectPositionState> emit, LatLng pos, address) async {
    emit(state.copyWith(userCurrentPos: pos, address: AddressField(address)));
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
            case GeolocationError.addressNotResolved:
              {}
          }
        },
        orElse: () {});

    return (isServiceFailure, isPermissionPermanentlyDenied, isPermissionNegated);
  }
}
