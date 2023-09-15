part of 'select_position_bloc.dart';

@freezed
class SelectPositionEvent with _$SelectPositionEvent {
  const factory SelectPositionEvent.selectPositionCreated(LatLng pos, String address) = _SelectPositionCreated;
  const factory SelectPositionEvent.selectCurrentPosition() = _SelectCurrentPosition;
  const factory SelectPositionEvent.searchPosition() = _SearchPosition;
  const factory SelectPositionEvent.addressFieldChanged(String value) = _AddressFieldChanged;
  const factory SelectPositionEvent.fakeContainerToggle(bool toggle) = _FakeContainerToggle;
}