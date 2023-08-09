part of 'select_position_bloc.dart';

@freezed
class SelectPositionEvent with _$SelectPositionEvent {
  const factory SelectPositionEvent.selectPositionCreated(LatLng pos) = _SelectPositionCreated;
  const factory SelectPositionEvent.selectCurrentPosition() = _SelectCurrentPosition;
}