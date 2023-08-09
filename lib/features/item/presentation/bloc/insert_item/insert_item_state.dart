part of 'insert_item_bloc.dart';

@freezed
class InsertItemState with _$InsertItemState {
  const factory InsertItemState({
    // Insert item parameters
    required ItemType type,
    required XFile? image,
    required PositionField pos,
    required CategoryField cat,
    required TitleField title,
    required QuestionField question,

    // User-friendly info
    @Default("") String category,
    @Default("") String address,
    @Default(false) isLoadingPosition,

    // Additional parameters
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
      pos: PositionField(const LatLng(0,0)),
      type: ItemType.lost,
      cat: CategoryField(-1),
      image: null);
}