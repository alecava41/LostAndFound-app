part of 'home_controller_bloc.dart';

@freezed
class HomeControllerState with _$HomeControllerState {
  const factory HomeControllerState({
    required int tabIndex,
  }) = _HomeControllerState;

  factory HomeControllerState.initial() => const HomeControllerState(tabIndex: 0);
}