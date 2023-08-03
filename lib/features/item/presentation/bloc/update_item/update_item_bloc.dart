import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../domain/entities/item.dart' as item_entity;
import '../../../domain/fields/insert_item/question.dart';
import '../../../domain/fields/insert_item/title.dart';
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
  final GetAddressFromPositionUseCase _getAddressFromPositionUseCase;

  final SecureStorage _secureStorage;

  UpdateItemBloc(
      {required GetItemUseCase getItemUseCase,
      required UploadItemImageUseCase uploadItemImageUseCase,
      required UpdateItemUseCase updateItemUseCase,
      required GetAddressFromPositionUseCase getAddressFromPositionUseCase,
      required SecureStorage secureStorage})
      : _getItemUseCase = getItemUseCase,
        _uploadItemImageUseCase = uploadItemImageUseCase,
        _getAddressFromPositionUseCase = getAddressFromPositionUseCase,
        _updateItemUseCase = updateItemUseCase,
        _secureStorage = secureStorage,
        super(UpdateItemState.initial()) {
    on<UpdateItemEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: (itemId) => _onContentCreated(emit, itemId),
            imageSelected: (image, path) => _onImageChanged(emit, image, path),
            imageDeleted: () => _onImageChanged(emit, null, null),
            titleChanged: (input) => _onTitleChanged(emit, input),
            questionChanged: (input) => _onQuestionChanged(emit, input),
            positionSelected: (pos) => _onPositionSelected(emit, pos),
            categorySelected: (catId, category) => _onCategoryChanged(emit, catId, category),
            updateSubmitted: () => _onUpdateSubmitted(emit));
      },
    );
  }

  Future<void> _onContentCreated(Emitter<UpdateItemState> emit, int id) async {
    emit(state.copyWith(isLoading: true));

    item_entity.Item? item;
    TitleField title = TitleField("");
    QuestionField question = QuestionField("");
    Either<Failure, Success>? request;

    final itemResponse = await _getItemUseCase(GetItemParams(id: id));
    itemResponse.fold((failure) => request = Left(failure), (it) {
      item = it;
      question = QuestionField(it.question != null ? it.question! : "");
      title = TitleField(it.title);
      request = const Right(Success.genericSuccess());
    });

    final session = await _secureStorage.getSessionInformation();

    emit(state.copyWith(
        isLoading: false,
        loadFailureOrSuccess: request,
        item: item,
        token: session.token,
        question: question,
        title: title,
        categoryId: item != null ? item!.category.id : 0,
        category: item != null ? item!.category.name : "",
        pos: item != null ? LatLng(item!.position.Y, item!.position.X) : const LatLng(0, 0),
        address: item != null ? item!.address : ""));
    emit(state.copyWith(loadFailureOrSuccess: null));
  }

  void _onCategoryChanged(Emitter<UpdateItemState> emit, int catId, String category) {
    emit(state.copyWith(categoryId: catId, category: category));
  }

  void _onImageChanged(Emitter<UpdateItemState> emit, XFile? image, String? path) {
    emit(state.copyWith(image: image, imagePath: path));
  }

  void _onTitleChanged(Emitter<UpdateItemState> emit, String input) {
    emit(state.copyWith(title: TitleField(input)));
  }

  void _onQuestionChanged(Emitter<UpdateItemState> emit, String input) {
    emit(state.copyWith(question: QuestionField(input)));
  }

  Future<void> _onUpdateSubmitted(Emitter<UpdateItemState> emit) async {
    final isItemLostValid = state.title.value.isRight();
    final isItemFoundValid = state.title.value.isRight() && state.question.value.isRight();

    Either<Failure, Success>? updateFailureOrSuccess;
    Either<Failure, Success>? imageFailureOrSuccess;

    if ((isItemLostValid || isItemFoundValid) && state.categoryId != 0 && state.pos != const LatLng(0, 0)) {
      emit(state.copyWith(isLoading: true, updateFailureOrSuccess: null));

      final params = UpdateItemParams(
          category: state.categoryId,
          title: state.title.value.getOrElse(() => ""),
          question: state.item!.type == ItemType.found ? state.question.value.getOrElse(() => "") : null,
          position: Position(X: state.pos.longitude, Y: state.pos.latitude),
          itemId: state.item!.id);

      final updateResponse = await _updateItemUseCase(params);
      updateResponse.fold(
          (failure) => updateFailureOrSuccess = Left(failure), (success) => updateFailureOrSuccess = Right(success));

      if (state.image != null) {
        final params = UploadItemImageParams(itemId: state.item!.id, image: File(state.image!.path));

        final imgFailureOrSuccess = await _uploadItemImageUseCase(params);
        imgFailureOrSuccess.fold(
            (failure) => imageFailureOrSuccess = Left(failure), (success) => imageFailureOrSuccess = Right(success));
      }
    } else {
      updateFailureOrSuccess =
          const Left(Failure.validationFailure("You need to fill all the fields with correct values."));
    }

    emit(state.copyWith(
        showError: true,
        updateFailureOrSuccess: updateFailureOrSuccess,
        imageUploadFailureOrSuccess: imageFailureOrSuccess));
  }

  Future<void> _onPositionSelected(Emitter<UpdateItemState> emit, LatLng pos) async {
    final addressOrFailure =
        await _getAddressFromPositionUseCase(GetAddressFromPositionParams(lat: pos.latitude, lon: pos.longitude));

    addressOrFailure.fold((failure) => {}, (address) => emit(state.copyWith(address: address, pos: pos)));
  }
}
