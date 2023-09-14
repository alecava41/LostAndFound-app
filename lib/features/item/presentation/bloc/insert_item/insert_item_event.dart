part of 'insert_item_bloc.dart';

@freezed
class InsertItemEvent with _$InsertItemEvent {
  const factory InsertItemEvent.typeChanged(ItemType? type) = _TypeChanged;
  const factory InsertItemEvent.titleChanged(String input) = _TitleChanged;
  const factory InsertItemEvent.questionChanged(String input) = _QuestionChanged;
  const factory InsertItemEvent.positionSelected(LatLng pos) = _PositionSelected;
  const factory InsertItemEvent.categorySelected(int id, String category) = _CategorySelected;
  const factory InsertItemEvent.imageSelected(String imagePath) = _ImageSelected;
  const factory InsertItemEvent.imageDeleted() = _ImageDeleted;
  const factory InsertItemEvent.insertSubmitted() = _InsertSubmitted;
  const factory InsertItemEvent.contentCreated(bool isNewItemLost) = _ContentCreated;
  const factory InsertItemEvent.onImagePicking() = _onImagePicking;
}