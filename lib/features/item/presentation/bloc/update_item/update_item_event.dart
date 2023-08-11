part of 'update_item_bloc.dart';

@freezed
class UpdateItemEvent with _$UpdateItemEvent {
  const factory UpdateItemEvent.contentCreated(int itemId) = _ContentCreated;
  const factory UpdateItemEvent.titleChanged(String input) = _TitleChanged;
  const factory UpdateItemEvent.questionChanged(String input) = _QuestionChanged;
  const factory UpdateItemEvent.positionSelected(LatLng pos) = _PositionSelected;
  const factory UpdateItemEvent.categorySelected(int id, String category) = _CategorySelected;
  const factory UpdateItemEvent.imageSelected(String imagePath) = _ImageSelected;
  const factory UpdateItemEvent.imageDeleted() = _ImageDeleted;
  const factory UpdateItemEvent.updateSubmitted() = _UpdateSubmitted;
}