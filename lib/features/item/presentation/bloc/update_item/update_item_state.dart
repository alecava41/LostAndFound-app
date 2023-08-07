part of 'update_item_bloc.dart';

@freezed
class UpdateItemState with _$UpdateItemState {
  const factory UpdateItemState(
      {
      // Item to be updated
      required item_entity.Item? item,

      // Update item parameters
      required XFile? image,
      required LatLng pos,
      required int categoryId,
      required TitleField title,
      required QuestionField question,

      // Additional params
      @Default("") String token,
      @Default("") String category,
      @Default("") String address,
      @Default(false) bool isConnected,
      @Default(false) bool hasLocationPermissions,
      @Default(false) showError,
      @Default(false) isLoading,
      Either<Failure, Success>? loadFailureOrSuccess,
      Either<Failure, Success>? updateFailureOrSuccess,
      Either<Failure, Success>? imageUploadFailureOrSuccess}) = _UpdateItemState;

  factory UpdateItemState.initial() => UpdateItemState(
      item: null,
      title: TitleField(""),
      question: QuestionField(""),
      pos: const LatLng(0, 0),
      categoryId: 0,
      image: null);
}
