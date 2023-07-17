part of 'select_position_bloc.dart';

@freezed
class SelectPositionState with _$SelectPositionState {
  const factory SelectPositionState({
    required LatLng markerPos,
    @Default(false) bool isDeviceConnected,
    @Default(false) bool isServiceAvailable,
    @Default(false) bool hasPermissions,
    @Default(false) bool isPermissionPermanentlyNegated,
  }) = _SelectPositionState;

  factory SelectPositionState.initial() => const SelectPositionState(
    markerPos: LatLng(43.102107520506756, 12.349117446797067)
  );
}