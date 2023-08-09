import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/usecases/create_item_usecase.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../domain/fields/insert_item/question.dart';
import '../../../domain/fields/insert_item/title.dart';
import '../../../domain/usecases/upload_item_image_usecase.dart';

part 'insert_item_bloc.freezed.dart';

part 'insert_item_event.dart';

part 'insert_item_state.dart';

class InsertItemBloc extends Bloc<InsertItemEvent, InsertItemState> {
  final CreateItemUseCase _createItemUseCase;
  final UploadItemImageUseCase _uploadItemImageUseCase;
  final GetAddressFromPositionUseCase _getAddressFromPositionUseCase;

  InsertItemBloc(
      {required CreateItemUseCase createItemUseCase,
      required UploadItemImageUseCase uploadItemImageUseCase,
      required GetAddressFromPositionUseCase getAddressFromPositionUseCase})
      : _createItemUseCase = createItemUseCase,
        _uploadItemImageUseCase = uploadItemImageUseCase,
        _getAddressFromPositionUseCase = getAddressFromPositionUseCase,
        super(InsertItemState.initial()) {
    on<InsertItemEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          imageSelected: (image) => _onImageChanged(emit, image),
          imageDeleted: () => _onImageChanged(emit, null),
          typeChanged: (type) => _onTypeChanged(emit, type),
          titleChanged: (input) => _onTitleChanged(emit, input),
          questionChanged: (input) => _onQuestionChanged(emit, input),
          positionSelected: (pos) => _onPositionSelected(emit, pos),
          categorySelected: (catId, category) => _onCategoryChanged(emit, catId, category),
          insertSubmitted: () => _onInsertSubmitted(emit),
        );
      },
    );
  }

  void _onCategoryChanged(Emitter<InsertItemState> emit, int catId, String category) {
    emit(state.copyWith(categoryId: catId, category: category));
  }

  void _onImageChanged(Emitter<InsertItemState> emit, XFile? image) {
    emit(state.copyWith(image: image));
  }

  void _onTypeChanged(Emitter<InsertItemState> emit, ItemType? type) {
    if (type != null) {
      emit(state.copyWith(type: type));
    }
  }

  void _onTitleChanged(Emitter<InsertItemState> emit, String input) {
    emit(state.copyWith(title: TitleField(input)));
  }

  void _onQuestionChanged(Emitter<InsertItemState> emit, String input) {
    emit(state.copyWith(question: QuestionField(input)));
  }

  Future<void> _onInsertSubmitted(Emitter<InsertItemState> emit) async {
    final isItemLostValid = state.title.value.isRight();
    final isItemFoundValid = state.title.value.isRight() && state.question.value.isRight();

    Either<Failure, Success>? createFailureOrSuccess;
    Either<Failure, Success>? imageFailureOrSuccess;
    int? newItemId;

    if ((isItemLostValid || isItemFoundValid) && state.categoryId != 0 && state.pos != const LatLng(0, 0)) {
      emit(state.copyWith(isLoading: true, insertFailureOrSuccess: null));

      final params = CreateItemParams(
          category: state.categoryId,
          title: state.title.value.getOrElse(() => ""),
          question: state.type == ItemType.found ? state.question.value.getOrElse(() => "") : null,
          type: state.type,
          position: Position(X: state.pos.longitude, Y: state.pos.latitude));

      final insertResponse = await _createItemUseCase(params);
      insertResponse.fold((failure) => createFailureOrSuccess = Left(failure), (itemId) {
        createFailureOrSuccess = const Right(Success.genericSuccess());
        newItemId = itemId;
      });

      if (newItemId != null && state.image != null) {
        final params = UploadItemImageParams(itemId: newItemId!, image: File(state.image!.path));

        final imgFailureOrSuccess = await _uploadItemImageUseCase(params);
        imgFailureOrSuccess.fold(
            (failure) => imageFailureOrSuccess = Left(failure), (success) => imageFailureOrSuccess = Right(success));
      }
    } else {
      createFailureOrSuccess =
          const Left(Failure.validationFailure("You need to fill all the fields with correct values."));
    }

    emit(state.copyWith(
        showError: true,
        insertFailureOrSuccess: createFailureOrSuccess,
        imageUploadFailureOrSuccess: imageFailureOrSuccess));
  }

  Future<void> _onPositionSelected(Emitter<InsertItemState> emit, LatLng pos) async {
    emit(state.copyWith(isLoadingPosition: true));

    final addressOrFailure =
        await _getAddressFromPositionUseCase(GetAddressFromPositionParams(lat: pos.latitude, lon: pos.longitude));

    addressOrFailure.fold(
        (failure) => emit(state.copyWith(
              isLoadingPosition: false,
            )),
        (address) => emit(state.copyWith(address: address, pos: pos, isLoadingPosition: false)));
  }
}
