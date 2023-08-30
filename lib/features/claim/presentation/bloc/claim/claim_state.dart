part of 'claim_bloc.dart';

@freezed
class ClaimState with _$ClaimState {
  const factory ClaimState({
    // Page content
    required List<ClaimReceived> claimsReceived,
    required List<ClaimSent> claimsSent,

    // Additional parameters
    @Default("") String token,
    @Default(false) bool isLoadingReceived,
    @Default(false) bool isLoadingSent,
    @Default(false) bool hasLoadingError,
    @Default(null) bool? needToSwitchTab,

  }) = _ClaimState;

  factory ClaimState.initial() => const ClaimState(claimsReceived: [], claimsSent: []);
}
