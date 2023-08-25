part of 'inbox_bloc.dart';

@freezed
class InboxState with _$InboxState {
  const factory InboxState({
    required Stream<List<Room>> userRooms,
    required int currentId,

    @Default(false) bool hasLoginOrLoadingError,
    @Default("") String token,
  }) = _InboxState;

  factory InboxState.initial() => const InboxState(
    userRooms: Stream.empty(),
    currentId: 0
  );
}
