import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/logout_usecase.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_user_info_usecase.dart';
import '../../../domain/usecases/upload_user_image_usecase.dart';

part 'user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserInfoUseCase _getUserInfoUseCase;
  final LogoutUseCase _logoutUseCase;
  final SecureStorage _secureStorage;
  final UploadUserImageUseCase _uploadUserImageUseCase;

  UserBloc(
      {required GetUserInfoUseCase getUserInfoUseCase,
      required UploadUserImageUseCase uploadUserImageUseCase,
      required LogoutUseCase logoutUseCase,
      required SecureStorage secureStorage})
      : _getUserInfoUseCase = getUserInfoUseCase,
        _logoutUseCase = logoutUseCase,
        _uploadUserImageUseCase = uploadUserImageUseCase,
        _secureStorage = secureStorage,
        super(UserState.initial()) {
    on<UserEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
            contentCreated: () => _onContentCreated(emit),
            imageChanged: (path) => _onImageChanged(emit, path),
            logout: () => _onLogout(emit));
      },
    );
  }

  Future<void> _onLogout(Emitter<UserState> emit) async {
    final response = await _logoutUseCase(NoParams());
    emit(state.copyWith(logoutFailureOrSuccess: response));
  }

  Future<void> _onContentCreated(Emitter<UserState> emit) async {
    emit(state.copyWith(isLoading: true));

    User? user;
    Either<Failure, Success>? request;

    final userResponse = await _getUserInfoUseCase(NoParams());
    userResponse.fold((failure) => request = Left(failure), (it) {
      user = it;
      request = const Right(Success.genericSuccess());
    });

    final session = await _secureStorage.getSessionInformation();

    emit(state.copyWith(
      isLoading: false,
      loadFailureOrSuccess: request,
      user: user,
      token: session != null ? session.token : "",
    ));
    emit(state.copyWith(loadFailureOrSuccess: null));
  }

  Future<void> _onImageChanged(Emitter<UserState> emit, String? path) async {
    Either<Failure, Success>? imgFailureOrSuccess;

    if (path != null) {
      final params = UploadUserImageParams(userId: state.user!.id, image: File(path));
      final response = await _uploadUserImageUseCase(params);
      imgFailureOrSuccess = response.fold((failure) => Left(failure), (success) {
        path = null;

        return Right(success);
      });

      // Workaround to refresh image
      await CachedNetworkImage.evictFromCache("$baseUrl/api/users/${state.user!.id}/image");
    }

    emit(state.copyWith(imageUploadFailureOrSuccess: imgFailureOrSuccess, imagePath: path));
    emit(state.copyWith(imageUploadFailureOrSuccess: null));
  }
}