part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.itemCreated(int id) = _ItemCreated;
  const factory ItemEvent.itemRefreshed() = _ItemRefreshed;
}