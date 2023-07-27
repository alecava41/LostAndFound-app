part of 'claim_bloc.dart';

@freezed
class ClaimState with _$ClaimState {
  const factory ClaimState({
    required List<ClaimReceived> claimsReceived,
    required List<ClaimSent> claimsSent,
    required String token,
    Either<Failure, Success>? loadFailureOrSuccess,
  }) = _ClaimState;

  factory ClaimState.initial() => const ClaimState(token: "", claimsReceived: [], claimsSent: []);
}
