part of 'item_bloc.dart';

@freezed
class ItemEvent with _$ItemEvent {
  const factory ItemEvent.itemCreated(int id) = _ItemCreated;
  const factory ItemEvent.itemRefreshed() = _ItemRefreshed;
  const factory ItemEvent.itemSolved() = _ItemSolved;
  const factory ItemEvent.claimRead(int id) = _ClaimRead;
  const factory ItemEvent.itemDeleted() = _ItemDeleted;
}