part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.chatContentCreated(String roomId, int itemId) = _ChatContentCreated;
  const factory ChatEvent.messageSent(PartialText message) = _MessageSent;
}