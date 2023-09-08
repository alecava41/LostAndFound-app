part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState({
    // Domain fields
    required User? user,
    required String? userEmail,
    required String? imagePath,

    // UI fields
    @Default(false) isLoading,
    @Default("") String token,
    @Default(false) bool hasLoadingError,
    Either<Failure, Success>? logoutFailureOrSuccess,
    Either<Failure, Success>? imageUploadFailureOrSuccess
  }) = _UserState;

  factory UserState.initial() => const UserState(
      user: null,
    imagePath: null,
    userEmail: null,
  );
}