part of 'select_position_bloc.dart';

@freezed
class SelectPositionEvent with _$SelectPositionEvent {
  const factory SelectPositionEvent.selectPositionCreated() = _SelectPositionCreated;
  const factory SelectPositionEvent.selectCurrentPosition() = _SelectCurrentPosition;
}