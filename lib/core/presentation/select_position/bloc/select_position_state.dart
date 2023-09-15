part of 'select_position_bloc.dart';

@freezed
class SelectPositionState with _$SelectPositionState {
  const factory SelectPositionState({
    required LatLng userCurrentPos,
    required AddressField address,

    @Default(false) bool isDeviceConnected,
    @Default(false) bool isServiceAvailable,
    @Default(false) bool hasPermissions,
    @Default(false) bool isPermissionPermanentlyNegated,
    @Default(false) bool isPermissionNegated,
    @Default(null) DateTime? lastPositionUpdate,

    // UI params
    @Default(false) bool isContainerExpanded,
    @Default(false) bool showError,
    @Default(false) bool isSearchingCurrentPosition,
    @Default(false) bool isSearchingAddressPosition,

    Either<Failure, Success>? positionFailureOrSuccess,
    Either<Failure, Success>? addressFailureOrSuccess,
  }) = _SelectPositionState;

  factory SelectPositionState.initial() => SelectPositionState(
    address: AddressField(""),
    userCurrentPos: const LatLng(0,0)
  );
}