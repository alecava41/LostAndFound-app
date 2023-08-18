import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/core/data/secure_storage/secure_storage.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_received_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';

import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
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
          receivedClaimsRefreshed: () => _onReceivedClaimRefreshed(emit),
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
    emit(state.copyWith(isLoadingReceived: true, isLoadingSent: true));

    Either<Failure, Success>? loadFailureOrSuccess;

    final receivedClaimsResponse = await _getReceivedClaimsUseCase(GetReceivedClaimsParams(last: 0));
    final sentClaimsResponse = await _getSentClaimsUseCase(GetSentClaimsParams(last: 0));

    receivedClaimsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));

    sentClaimsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));

    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
          claimsReceived: receivedClaimsResponse.getOrElse(() => []),
          claimsSent: sentClaimsResponse.getOrElse(() => []),
          loadFailureOrSuccess: loadFailureOrSuccess,
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

  Future<void> _onReceivedClaimRefreshed(Emitter<ClaimState> emit) async {
    emit(state.copyWith(isLoadingReceived: true));

    Either<Failure, Success>? loadFailureOrSuccess;

    final receivedClaimsResponse = await _getReceivedClaimsUseCase(GetReceivedClaimsParams(last: 0));

    receivedClaimsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));

    emit(
      state.copyWith(
          isLoadingReceived: false,
          claimsReceived: receivedClaimsResponse.getOrElse(() => []),
          loadFailureOrSuccess: loadFailureOrSuccess),
    );
  }

  Future<void> _onSentClaimRefreshed(Emitter<ClaimState> emit) async {
    emit(state.copyWith(isLoadingSent: true));

    Either<Failure, Success>? loadFailureOrSuccess;

    final sentClaimsResponse = await _getSentClaimsUseCase(GetSentClaimsParams(last: 0));

    sentClaimsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));

    emit(
      state.copyWith(
          isLoadingSent: false,
          claimsSent: sentClaimsResponse.getOrElse(() => []),
          loadFailureOrSuccess: loadFailureOrSuccess),
    );
  }
}
