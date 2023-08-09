import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/domain/usecases/get_categories_usecase.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';

import '../../../domain/entities/category.dart';
import '../../../status/failures.dart';
import '../../../status/success.dart';

part 'category_bloc.freezed.dart';

part 'category_event.dart';

part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUseCase _getCategoriesUseCase;

  CategoryBloc({required GetCategoriesUseCase getCategoriesUseCase})
      : _getCategoriesUseCase = getCategoriesUseCase,
        super(CategoryState.initial()) {
    on<CategoryEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(categoryCreated: () => _onCategoryCreated(emit));
      },
    );
  }

  Future<void> _onCategoryCreated(Emitter<CategoryState> emit) async {
    emit(state.copyWith(isLoading: true));

    final categoriesOrFailure = await _getCategoriesUseCase(NoParams());
    List<Category> categories = [];

    categoriesOrFailure.fold((failure) => {}, (cats) => categories = cats);
    categories.insert(0, const Category(id: 0, name: "All", icon: 0xe1f7));

    emit(state.copyWith(
        isLoading: false,
        categories: categories,
        loadFailureOrSuccess:
            categoriesOrFailure.isLeft() ? const Left(Failure.networkFailure()) : const Right(Success.genericSuccess())));
  }
}
