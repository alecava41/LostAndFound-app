part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState({
    // Chat params
    required Stream<List<Message>> messages,
    required Room? room,
    required Item? item,
    required String? currentUsername,

    // UI params
    @Default(false) bool hasLoadingError,
    @Default(false) bool isLoading,
    @Default("") String token,
  }) = _ChatState;

  factory ChatState.initial() => const ChatState(messages: Stream.empty(), currentUsername: null, item: null, room: null);
}
