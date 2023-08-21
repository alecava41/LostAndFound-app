import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/badges/domain/usecases/get_unread_news_usecase.dart';
import 'package:lost_and_found/features/badges/domain/usecases/get_unread_received_claims_usecase.dart';

import '../../../../utils/constants.dart';

part 'badge_bloc.freezed.dart';

part 'badge_event.dart';

part 'badge_state.dart';

class BadgeBloc extends Bloc<BadgeEvent, BadgeState> {
  final GetUnreadNewsUseCase _getUnreadNewsUseCase;
  final GetUnreadReceivedClaimsUseCase _getUnreadReceivedClaimsUseCase;

  BadgeBloc(
      {required GetUnreadNewsUseCase getUnreadNewsUseCase,
      required GetUnreadReceivedClaimsUseCase getUnreadReceivedClaimsUseCase})
      : _getUnreadNewsUseCase = getUnreadNewsUseCase,
        _getUnreadReceivedClaimsUseCase = getUnreadReceivedClaimsUseCase,
        super(BadgeState.initial()) {
    on<BadgeEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          badgeCreated: () => _onBadgeCreated(emit),
          newsRead: () => _onNewsRead(emit),
          receivedClaimRead: () => _onReceivedClaimRead(emit),
          newNews: () => _onNewNews(emit),
          newReceivedClaim: () => _onNewReceivedClaim(emit),
        );
      },
    );

    FirebaseMessaging.onMessage.listen((message) {
      final topic = message.data['topic'] == 'item'
          ? NotificationType.item
          : (message.data['topic'] == 'newClaim'
              ? NotificationType.newClaim
              : (message.data['topic'] == 'sentClaim' ? NotificationType.sentClaim : NotificationType.chat));

      switch (topic) {
        case NotificationType.item:
          add(const BadgeEvent.newNews());
        case NotificationType.newClaim:
          add(const BadgeEvent.newReceivedClaim());
        case NotificationType.chat:
          // TODO handle chat notification
          () {};
        default:
          break;
      }
    });
  }

  void _onNewNews(Emitter<BadgeState> emit) {
    emit(state.copyWith(unreadNews: state.unreadNews + 1));
  }

  void _onNewReceivedClaim(Emitter<BadgeState> emit) {
    emit(state.copyWith(unreadReceivedClaims: state.unreadReceivedClaims + 1));
  }

  void _onNewsRead(Emitter<BadgeState> emit) {
    emit(state.copyWith(unreadNews: state.unreadNews - 1));
  }

  void _onReceivedClaimRead(Emitter<BadgeState> emit) {
    emit(state.copyWith(unreadReceivedClaims: state.unreadReceivedClaims - 1));
  }

  Future<void> _onBadgeCreated(Emitter<BadgeState> emit) async {
    final unreadNewsResponse = await _getUnreadNewsUseCase(NoParams());
    final unreadReceivedClaimsResponse = await _getUnreadReceivedClaimsUseCase(NoParams());

    final int unreadNews = unreadNewsResponse.fold((_) => 0, (number) => number);
    final int unreadReceivedClaims = unreadReceivedClaimsResponse.fold((_) => 0, (number) => number);

    emit(state.copyWith(
      unreadNews: unreadNews,
      unreadReceivedClaims: unreadReceivedClaims,
    ));
  }
}
