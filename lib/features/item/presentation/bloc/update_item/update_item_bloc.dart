import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/domain/fields/update_item/category.dart';
import 'package:lost_and_found/features/item/domain/fields/update_item/position.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../../../utils/constants.dart';
import '../../../domain/entities/item.dart' as item_entity;
import '../../../domain/fields/insert_item/question.dart';
import '../../../domain/fields/insert_item/title.dart';
import '../../../domain/usecases/delete_item_image_usecase.dart';
import '../../../domain/usecases/get_item_usecase.dart';
import '../../../domain/usecases/update_item_usecase.dart';
import '../../../domain/usecases/upload_item_image_usecase.dart';

part 'update_item_bloc.freezed.dart';

part 'update_item_event.dart';

part 'update_item_state.dart';

class UpdateItemBloc extends Bloc<UpdateItemEvent, UpdateItemState> {
  final GetItemUseCase _getItemUseCase;
  final UpdateItemUseCase _updateItemUseCase;
  final UploadItemImageUseCase _uploadItemImageUseCase;
  final DeleteItemImageUseCase _deleteItemImageUseCase;
  final GetAddressFromPositionUseCase _getAddressFromPositionUseCase;

  final SecureStorage _secureStorage;

  UpdateItemBloc(
      {required GetItemUseCase getItemUseCase,
      required UploadItemImageUseCase uploadItemImageUseCase,
      required UpdateItemUseCase updateItemUseCase,
      required GetAddressFromPositionUseCase getAddressFromPositionUseCase,
      required DeleteItemImageUseCase deleteItemImageUseCase,
      required SecureStorage secureStorage})
      : _getItemUseCase = getItemUseCase,
        _uploadItemImageUseCase = uploadItemImageUseCase,
        _getAddressFromPositionUseCase = getAddressFromPositionUseCase,
        _updateItemUseCase = updateItemUseCase,
        _deleteItemImageUseCase = deleteItemImageUseCase,
        _secureStorage = secureStorage,
        super(UpdateItemState.initial()) {
    on<UpdateItemEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: (itemId) => _onContentCreated(emit, itemId),
            imageSelected: (image) => _onImageChanged(emit, image),
            imageDeleted: () => _onImageChanged(emit, null),
            titleChanged: (input) => _onTitleChanged(emit, input),
            questionChanged: (input) => _onQuestionChanged(emit, input),
            positionSelected: (pos) => _onPositionSelected(emit, pos),
            categorySelected: (catId, category) => _onCategoryChanged(emit, catId, category),
            updateSubmitted: () => _onUpdateSubmitted(emit));
      },
    );
  }

  Future<void> _onContentCreated(Emitter<UpdateItemState> emit, int id) async {
    emit(state.copyWith(isLoading: true, hasLoadingError: false));

    item_entity.Item? item;
    TitleField title = TitleField("");
    QuestionField question = QuestionField("");

    final itemResponse = await _getItemUseCase(GetItemParams(id: id));
    itemResponse.fold((failure) => null, (it) {
      item = it;
      question = QuestionField(it.question != null ? it.question! : "");
      title = TitleField(it.title);
    });

    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
        isLoading: false,
        hasLoadingError: itemResponse.isLeft(),
        item: item,
        token: session != null ? session.token : "",
        question: question,
        title: title,
        cat: CategoryField(item != null ? item!.category.id : -1),
        category: item != null ? item!.category.name : "",
        pos: PositionField(item != null ? LatLng(item!.position.X, item!.position.Y) : defaultPosition),
        address: item != null ? item!.address : "",
      ),
    );
  }

  void _onCategoryChanged(Emitter<UpdateItemState> emit, int catId, String category) {
    emit(state.copyWith(cat: CategoryField(catId), category: category, hasChangedSomething: true));
  }

  void _onImageChanged(Emitter<UpdateItemState> emit, String? image) {
    emit(state.copyWith(imagePath: image, hasDeletedOriginalImage: image == null, hasChangedSomething: true));
  }

  void _onTitleChanged(Emitter<UpdateItemState> emit, String input) {
    emit(state.copyWith(title: TitleField(input), hasChangedSomething: true));
  }

  void _onQuestionChanged(Emitter<UpdateItemState> emit, String input) {
    emit(state.copyWith(question: QuestionField(input), hasChangedSomething: true));
  }

  Future<void> _onUpdateSubmitted(Emitter<UpdateItemState> emit) async {
    final isItemLostValid = state.title.value.isRight();
    final isItemFoundValid = state.title.value.isRight() && state.question.value.isRight();
    final isPositionValid = state.pos.value.isRight();
    final isCategoryValid = state.cat.value.isRight();

    Either<Failure, Success>? updateFailureOrSuccess;
    Either<Failure, Success>? imageFailureOrSuccess;

    if ((isItemLostValid || isItemFoundValid) && isCategoryValid && isPositionValid) {
      emit(state.copyWith(isLoading: true, updateFailureOrSuccess: null));

      final pos = state.pos.value.getOrElse(() => defaultPosition);

      final params = UpdateItemParams(
          category: state.cat.value.getOrElse(() => 0),
          title: state.title.value.getOrElse(() => ""),
          question: state.item!.type == ItemType.found ? state.question.value.getOrElse(() => "") : null,
          position: Position(X: pos.longitude, Y: pos.latitude),
          itemId: state.item!.id);

      final updateResponse = await _updateItemUseCase(params);
      updateResponse.fold(
          (failure) => updateFailureOrSuccess = Left(failure), (success) => updateFailureOrSuccess = Right(success));

      if (state.imagePath != null) {
        final params = UploadItemImageParams(itemId: state.item!.id, image: File(state.imagePath!));

        final imgFailureOrSuccess = await _uploadItemImageUseCase(params);
        imgFailureOrSuccess.fold(
            (failure) => imageFailureOrSuccess = Left(failure), (success) => imageFailureOrSuccess = Right(success));
      } else if (state.item!.hasImage && state.hasDeletedOriginalImage) {
        final params = DeleteItemImageParams(itemId: state.item!.id);

        final imgFailureOrSuccess = await _deleteItemImageUseCase(params);
        imgFailureOrSuccess.fold(
            (failure) => imageFailureOrSuccess = Left(failure), (success) => imageFailureOrSuccess = Right(success));
      }

      // Workaround to refresh image
      await CachedNetworkImage.evictFromCache("$baseUrl/api/users/${state.item!.id}/image");
    }
    // else {
    //   updateFailureOrSuccess =
    //       const Left(Failure.validationFailure("You need to fill all the fields with correct values."));
    // }

    emit(state.copyWith(
        showError: true,
        updateFailureOrSuccess: updateFailureOrSuccess,
        imageUploadFailureOrSuccess: imageFailureOrSuccess));

    emit(state.copyWith(updateFailureOrSuccess: null, imageUploadFailureOrSuccess: null));
  }

  Future<void> _onPositionSelected(Emitter<UpdateItemState> emit, LatLng pos) async {
    emit(state.copyWith(isLoadingPosition: true, hasChangedSomething: true));

    final addressOrFailure =
        await _getAddressFromPositionUseCase(GetAddressFromPositionParams(lat: pos.latitude, lon: pos.longitude));

    addressOrFailure.fold((failure) => emit(state.copyWith(isLoadingPosition: false)),
        (address) => emit(state.copyWith(address: address, pos: PositionField(pos), isLoadingPosition: false)));
  }
}
