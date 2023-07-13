part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.homeCreated() = _HomeCreated;
  const factory HomeEvent.homeRefreshed() =_HomeRefreshed;
}