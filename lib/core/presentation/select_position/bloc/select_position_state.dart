part of 'select_position_bloc.dart';

@freezed
class SelectPositionState with _$SelectPositionState {
  const factory SelectPositionState({
    required LatLng userCurrentPos,
    @Default(false) bool isDeviceConnected,
    @Default(false) bool isServiceAvailable,
    @Default(false) bool hasPermissions,
    @Default(false) bool isPermissionPermanentlyNegated,
    @Default(null) DateTime? lastPositionUpdate
  }) = _SelectPositionState;

  factory SelectPositionState.initial() => const SelectPositionState(
    userCurrentPos: LatLng(43.102107520506756, 12.349117446797067)
  );
}