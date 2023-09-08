part of 'claim_bloc.dart';

@freezed
class ClaimEvent with _$ClaimEvent {
  const factory ClaimEvent.claimContentCreated(int? newClaimId) = _ClaimContentCreated;
  const factory ClaimEvent.receivedClaimsRefreshed(item.Item? newItem) = _ReceivedClaimsRefreshed;
  const factory ClaimEvent.claimRead(int id) = _ClaimRead;
  const factory ClaimEvent.sentClaimsRefreshed() = _SentClaimsRefreshed;
}