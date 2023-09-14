import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/logout_usecase.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../../chat/domain/usecases/logout_chat_usecase.dart';
import '../../../domain/entities/user.dart';
import '../../../domain/usecases/get_user_info_usecase.dart';
import '../../../domain/usecases/upload_user_image_usecase.dart';

part 'user_bloc.freezed.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserInfoUseCase _getUserInfoUseCase;
  final LogoutUseCase _logoutUseCase;
  final LogoutChatUseCase _logoutChatUseCase;
  final SecureStorage _secureStorage;
  final UploadUserImageUseCase _uploadUserImageUseCase;

  UserBloc(
      {required GetUserInfoUseCase getUserInfoUseCase,
      required UploadUserImageUseCase uploadUserImageUseCase,
      required LogoutUseCase logoutUseCase,
      required LogoutChatUseCase logoutChatUseCase,
      required SecureStorage secureStorage})
      : _getUserInfoUseCase = getUserInfoUseCase,
        _logoutUseCase = logoutUseCase,
        _uploadUserImageUseCase = uploadUserImageUseCase,
        _logoutChatUseCase = logoutChatUseCase,
        _secureStorage = secureStorage,
        super(UserState.initial()) {
    on<UserEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          contentCreated: () => _onContentCreated(emit),
          imageChanged: (path) => _onImageChanged(emit, path),
          logout: () => _onLogout(emit),
          restoreInitial: () => emit(UserState.initial()),
        );
      },
    );
  }

  Future<void> _onLogout(Emitter<UserState> emit) async {
    final response = await _logoutUseCase(NoParams());
    final chatResponse = await _logoutChatUseCase(NoParams());

    emit(
      state.copyWith(
        logoutFailureOrSuccess: response.isLeft() || chatResponse.isLeft()
            ? const Left(Failure.genericFailure())
            : const Right(Success.genericSuccess()),
      ),
    );

    emit(state.copyWith(logoutFailureOrSuccess: null));
  }

  Future<void> _onContentCreated(Emitter<UserState> emit) async {
    emit(state.copyWith(isLoading: true));

    User? user;

    final userResponse = await _getUserInfoUseCase(NoParams());
    userResponse.fold((failure) => null, (it) {
      user = it;
    });

    final session = await _secureStorage.getSessionInformation();

    emit(state.copyWith(
      isLoading: false,
      hasLoadingError: userResponse.isLeft(),
      user: user,
      userEmail: session != null ? session.email : "",
      token: session != null ? session.token : "",
    ));
  }

  Future<void> _onImageChanged(Emitter<UserState> emit, String? path) async {
    Either<Failure, Success>? imgFailureOrSuccess;

    if (path != null) {
      final params = UploadUserImageParams(image: File(path));
      final response = await _uploadUserImageUseCase(params);
      imgFailureOrSuccess = response.fold((failure) => Left(failure), (success) {
        path = null;
        return Right(success);
      });
    }

    emit(state.copyWith(
        imageUploadFailureOrSuccess: imgFailureOrSuccess,
        imagePath: imgFailureOrSuccess != null && imgFailureOrSuccess.isLeft() ? null : path,
        user: state.user == null
            ? null
            : User(
                id: state.user!.id,
                username: state.user!.username,)));
    emit(state.copyWith(imageUploadFailureOrSuccess: null));
  }
}
