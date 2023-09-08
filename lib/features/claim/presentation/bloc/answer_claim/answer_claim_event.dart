part of 'answer_claim_bloc.dart';

@freezed
class AnswerClaimEvent with _$AnswerClaimEvent {
  const factory AnswerClaimEvent.contentCreated(int itemId) = _ContentCreated;
  const factory AnswerClaimEvent.claimDecisionTaken(ClaimStatus status, int claimId) = _ClaimCreated;
  const factory AnswerClaimEvent.createChatRoom(int id, String username) = _CreateChatRoom;
}