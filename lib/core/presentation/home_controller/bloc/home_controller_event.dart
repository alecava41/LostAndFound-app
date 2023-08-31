part of 'home_controller_bloc.dart';

@freezed
class HomeControllerEvent with _$HomeControllerEvent {
  const factory HomeControllerEvent.tabChanged(int index) = _HomeControllerTabChanged;
  const factory HomeControllerEvent.restoreInitial() = _RestoreInitial;
}