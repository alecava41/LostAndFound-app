part of 'update_item_bloc.dart';

@freezed
class UpdateItemState with _$UpdateItemState {
  const factory UpdateItemState({
    // Item to be updated
    required item_entity.Item? item,

    // Update item parameters
    required String? imagePath,
    required PositionField pos,
    required CategoryField cat,
    required TitleField title,
    required QuestionField question,

    // Additional UI params
    @Default("") String token,
    @Default("") String category,
    @Default("") String address,
    @Default(false) showError,
    @Default(false) isLoading,
    @Default(false) isLoadingPosition,
    @Default(false) hasDeletedOriginalImage,
    @Default(false) hasChangedSomething,

    // Position feature
    @Default(false) bool isConnected,
    @Default(false) bool hasLocationPermissions,

    // Network operations
    Either<Failure, Success>? loadFailureOrSuccess,
    Either<Failure, Success>? updateFailureOrSuccess,
    Either<Failure, Success>? imageUploadFailureOrSuccess,
  }) = _UpdateItemState;

  factory UpdateItemState.initial() => UpdateItemState(
      item: null,
      title: TitleField(""),
      question: QuestionField(""),
      pos: PositionField(const LatLng(0, 0)),
      cat: CategoryField(-1),
      imagePath: null);
}
