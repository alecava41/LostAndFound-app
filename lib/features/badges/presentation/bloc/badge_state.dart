part of 'badge_bloc.dart';

@freezed
class BadgeState with _$BadgeState {
  const factory BadgeState({
    required int unreadNews,
    required int unreadReceivedClaims,
    required bool hasUnreadChats,
    required bool hasUnreadSentClaims,
  }) = _BadgeState;

  factory BadgeState.initial() => const BadgeState(unreadNews: 0, unreadReceivedClaims: 0, hasUnreadChats: false, hasUnreadSentClaims: false);
}
