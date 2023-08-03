part of 'insert_item_bloc.dart';

@freezed
class InsertItemState with _$InsertItemState {
  const factory InsertItemState({
    // Insert item parameters
    required ItemType type,
    required XFile? image,
    required String? imagePath,
    required LatLng pos,
    required int categoryId,
    required TitleField title,
    required QuestionField question,

    // Additional params
    @Default("") String category,
    @Default("") String address,
    @Default(false) bool isConnected,
    @Default(false) bool hasLocationPermissions,
    @Default(false) showError,
    @Default(false) isLoading,

    Either<Failure, Success>? insertFailureOrSuccess,
    Either<Failure, Success>? imageUploadFailureOrSuccess
  }) = _InsertItemState;

  factory InsertItemState.initial() => InsertItemState(
      title: TitleField(""),
      question: QuestionField(""),
      pos: const LatLng(0, 0),
      type: ItemType.lost,
      categoryId: 0,
      image: null,
      imagePath: null);
}