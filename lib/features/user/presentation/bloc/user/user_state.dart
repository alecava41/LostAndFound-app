part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({

    required User? user,
    required String? imagePath,

    @Default(false) isLoading,
    @Default("") String token,
    Either<Failure, Success>? loadFailureOrSuccess,
    Either<Failure, Success>? logoutFailureOrSuccess,
    Either<Failure, Success>? imageUploadFailureOrSuccess
  }) = _UserState;

  factory UserState.initial() => const UserState(
      user: null,
    imagePath: null
  );
}