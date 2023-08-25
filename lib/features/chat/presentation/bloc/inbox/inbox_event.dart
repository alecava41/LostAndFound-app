part of 'inbox_bloc.dart';

@freezed
class InboxEvent with _$InboxEvent {
  const factory InboxEvent.inboxContentCreated() = _InboxContentCreated;
}