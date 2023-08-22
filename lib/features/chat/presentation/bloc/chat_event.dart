part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.chatContentCreated() = _ChatContentCreated;
}