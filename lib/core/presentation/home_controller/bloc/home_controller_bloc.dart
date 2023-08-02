import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_controller_bloc.freezed.dart';

part 'home_controller_event.dart';

part 'home_controller_state.dart';

class HomeControllerBloc extends Bloc<HomeControllerEvent, HomeControllerState> {
  HomeControllerBloc() : super(HomeControllerState.initial()) {
    on<HomeControllerEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(tabChanged: (idx) => _onTabChanged(emit, idx));
      },
    );
  }

  void _onTabChanged(Emitter<HomeControllerState> emit, int index) {
    emit(state.copyWith(tabIndex: index));
  }
}
