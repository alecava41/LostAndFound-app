part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<Category> categories,
    @Default(true) bool isLoading,
    Either<Failure, Success>? loadFailureOrSuccess,
  }) = _CategoryState;

  factory CategoryState.initial() => const CategoryState(
     categories: []
  );
}