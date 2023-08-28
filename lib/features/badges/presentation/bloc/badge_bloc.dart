import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/badges/domain/usecases/get_unread_news_usecase.dart';
import 'package:lost_and_found/features/badges/domain/usecases/get_unread_received_claims_usecase.dart';

import '../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../utils/constants.dart';
import '../../../chat/domain/usecases/get_user_rooms_usecase.dart';

part 'badge_bloc.freezed.dart';

part 'badge_event.dart';

part 'badge_state.dart';

class BadgeBloc extends Bloc<BadgeEvent, BadgeState> {
  final GetUnreadNewsUseCase _getUnreadNewsUseCase;
  final GetUnreadReceivedClaimsUseCase _getUnreadReceivedClaimsUseCase;
  final GetUserRoomsUseCase _getUserRoomsUseCase;

  final SecureStorage _storage;

  BadgeBloc({
    required GetUnreadNewsUseCase getUnreadNewsUseCase,
    required GetUnreadReceivedClaimsUseCase getUnreadReceivedClaimsUseCase,
    required GetUserRoomsUseCase getUserRoomsUseCase,
    required SecureStorage storage,
  })  : _getUnreadNewsUseCase = getUnreadNewsUseCase,
        _getUnreadReceivedClaimsUseCase = getUnreadReceivedClaimsUseCase,
        _getUserRoomsUseCase = getUserRoomsUseCase,
        _storage = storage,
        super(BadgeState.initial()) {
    on<BadgeEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          badgeCreated: () => _onBadgeCreated(emit),
          newsRead: () => _onNewsRead(emit),
          receivedClaimRead: () => _onReceivedClaimRead(emit),
          newNews: () => _onNewNews(emit),
          newReceivedClaim: () => _onNewReceivedClaim(emit),
          sentClaimUpdate: () => _onSentClaimUpdate(emit),
          sentClaimRead: () => _onSentClaimRead(emit),
          chatUpdate: (hasUnreadChats) => _onChatUpdate(emit, hasUnreadChats)
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
        case NotificationType.sentClaim:
          add(const BadgeEvent.sentClaimUpdate());
        case NotificationType.chat:
          () => null;
      }
    });
  }

  void _onChatUpdate(Emitter<BadgeState> emit, bool hasChatUpdates) {
    emit(state.copyWith(hasUnreadChats: hasChatUpdates));
  }

  void _onSentClaimRead(Emitter<BadgeState> emit) {
    emit(state.copyWith(hasUnreadSentClaims: false));
  }

  void _onSentClaimUpdate(Emitter<BadgeState> emit) {
    emit(state.copyWith(hasUnreadSentClaims: true));
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

    final session = await _storage.getSessionInformation();

    emit(state.copyWith(
      unreadNews: unreadNews,
      unreadReceivedClaims: unreadReceivedClaims,
    ));

    final roomsResponse = await _getUserRoomsUseCase(NoParams());
    roomsResponse.fold(
      (_) => null,
      (roomsStream) => roomsStream.listen(
        (rooms) {
          if (rooms.any((room) =>
              (room.metadata!["id1"] == session!.user &&
                  room.metadata!["last-${session.user}"] != room.metadata!["lastMessageId"]) ||
              (room.metadata!["id2"] == session.user &&
                  room.metadata!["last-${session.user}"] != room.metadata!["lastMessageId"]))) {
            add(const BadgeEvent.chatUpdate(true));
          } else {
            add(const BadgeEvent.chatUpdate(false));
          }
        },
      ),
    );
  }
}
