part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState() = _ChatState;

  factory ChatState.initial() => const ChatState();
}
