part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.resetFilters() = _ResetFilters;
  const factory SearchEvent.foundCheckTriggered() = _FoundCheckTriggered;
  const factory SearchEvent.lostCheckTriggered() = _LostCheckTriggered;
  const factory SearchEvent.positionSelected(LatLng pos) = _PositionSelected;
  const factory SearchEvent.categorySelected(int id, String category) = _CategorySelected;
  const factory SearchEvent.dateSelected(DateTime date) = _DateSelected;
  const factory SearchEvent.searchSubmitted() = _SearchSubmitted;
  const factory SearchEvent.showFilters() = _ShowFilters;
  const factory SearchEvent.searchPageChanged(SearchPageState page) = _SearchPageChanged;
  const factory SearchEvent.sortParameterChanged(ResultOrder order) = _SortParameterChanged;
  const factory SearchEvent.restoreInitial() = _RestoreInitial;
}