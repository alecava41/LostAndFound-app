import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_received_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';

import 'package:lost_and_found/features/item/domain/entities/item.dart' as item;

import '../../../../../core/domain/usecases/usecase.dart';
import '../../../domain/entities/claim_sent.dart';
import '../../../domain/entities/claim_received.dart';
import '../../../domain/usecases/insert_read_claim_usecase.dart';

part 'claim_bloc.freezed.dart';

part 'claim_event.dart';

part 'claim_state.dart';

class ClaimBloc extends Bloc<ClaimEvent, ClaimState> {
  final GetReceivedClaimsUseCase _getReceivedClaimsUseCase;
  final InsertReadClaimUseCase _insertReadClaimUseCase;
  final GetSentClaimsUseCase _getSentClaimsUseCase;
  final SecureStorage _secureStorage;

  ClaimBloc(
      {required GetReceivedClaimsUseCase getReceivedClaimsUseCase,
      required GetSentClaimsUseCase getSentClaimsUseCase,
      required InsertReadClaimUseCase insertReadClaimUseCase,
      required SecureStorage secureStorage})
      : _getReceivedClaimsUseCase = getReceivedClaimsUseCase,
        _getSentClaimsUseCase = getSentClaimsUseCase,
        _insertReadClaimUseCase = insertReadClaimUseCase,
        _secureStorage = secureStorage,
        super(ClaimState.initial()) {
    on<ClaimEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          claimContentCreated: (tab, newClaimId) => _onClaimCreated(emit, tab, newClaimId),
          receivedClaimsRefreshed: (item) => _onReceivedClaimRefreshed(emit, item),
          sentClaimsRefreshed: () => _onSentClaimRefreshed(emit),
          claimRead: (id) => _onClaimRead(emit, id),
        );
      },
    );
  }

  Future<void> _onClaimRead(Emitter<ClaimState> emit, int claimId) async {
    final response = await _insertReadClaimUseCase(InsertReadClaimParams(claimId: claimId));
    response.fold((_) => null, (_) {
      final token = state.token;
      state.claimsReceived.firstWhere((element) => element.id == claimId).opened = true;
      emit(state.copyWith(token: ""));
      emit(state.copyWith(token: token));
    });
  }

  Future<void> _onClaimCreated(Emitter<ClaimState> emit, int? tab, int? newClaimId) async {
    emit(state.copyWith(isLoadingReceived: true, isLoadingSent: true, hasLoadingError: false));

    final receivedClaimsResponse = await _getReceivedClaimsUseCase(NoParams());
    final sentClaimsResponse = await _getSentClaimsUseCase(NoParams());

    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
          claimsReceived: receivedClaimsResponse.getOrElse(() => []),
          claimsSent: sentClaimsResponse.getOrElse(() => []),
          hasLoadingError: receivedClaimsResponse.isLeft() || sentClaimsResponse.isLeft(),
          token: session != null ? session.token : "",
          isLoadingReceived: false,
          isLoadingSent: false),
    );

    if (tab != null) {
      emit(state.copyWith(needToSwitchTab: true));
      emit(state.copyWith(needToSwitchTab: null));
    }

    if (newClaimId != null) {
      await _onClaimRead(emit, newClaimId);
    }
  }

  Future<void> _onReceivedClaimRefreshed(Emitter<ClaimState> emit, item.Item? newItem) async {
    emit(state.copyWith(isLoadingReceived: true, hasLoadingError: false));

    if (newItem != null) {
      final newClaims = newItem.claims!;

      for (var claim in newClaims) {
        final claimIdx = state.claimsReceived.indexWhere((element) => element.id == claim.id);
        claim.opened = state.claimsReceived[claimIdx].opened;
      }

      emit(
        state.copyWith(
          isLoadingReceived: false,
          claimsReceived: newClaims
              .map((e) => ClaimReceived(
                  id: e.id,
                  item: ReceivedItem(id: newItem.id, title: newItem.title),
                  user: ReceivedUser(id: e.user.id, username: e.user.username, hasImage: e.user.hasImage),
                  opened: e.opened,
                  status: e.status))
              .toList(),
        ),
      );
    } else {
      final receivedClaimsResponse = await _getReceivedClaimsUseCase(NoParams());

      emit(
        state.copyWith(
          isLoadingReceived: false,
          claimsReceived: receivedClaimsResponse.getOrElse(() => []),
          hasLoadingError: receivedClaimsResponse.isLeft(),
        ),
      );
    }
  }

  Future<void> _onSentClaimRefreshed(Emitter<ClaimState> emit) async {
    emit(state.copyWith(isLoadingSent: true, hasLoadingError: false));

    final sentClaimsResponse = await _getSentClaimsUseCase(NoParams());

    emit(
      state.copyWith(
          isLoadingSent: false,
          claimsSent: sentClaimsResponse.getOrElse(() => []),
          hasLoadingError: sentClaimsResponse.isLeft()),
    );
  }
}
