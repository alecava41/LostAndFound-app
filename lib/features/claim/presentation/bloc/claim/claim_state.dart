part of 'claim_bloc.dart';

@freezed
class ClaimState with _$ClaimState {
  const factory ClaimState({
    required List<ClaimReceived> claimsReceived,
    required List<ClaimSent> claimsSent,
    @Default("") String token,
    @Default(false) bool isLoadingReceived,
    @Default(false) bool isLoadingSent,
    Either<Failure, Success>? loadFailureOrSuccess,
  }) = _ClaimState;

  factory ClaimState.initial() => const ClaimState(claimsReceived: [], claimsSent: []);
}
