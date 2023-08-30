part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState({
    required List<Category> categories,
    @Default(true) bool isLoading,
    @Default(false) bool hasLoadingError,
  }) = _CategoryState;

  factory CategoryState.initial() => const CategoryState(categories: []);
}
