part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.resetFilters() = _ResetFilters;
  const factory SearchEvent.foundCheckTriggered() = _FoundCheckTriggered;
  const factory SearchEvent.lostCheckTriggered() = _LostCheckTriggered;
  const factory SearchEvent.positionSelected(LatLng pos) = _PositionSelected;
}