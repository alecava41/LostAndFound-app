import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../domain/entities/news.dart';

part 'news_bloc.freezed.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetUserNotificationsUseCase _getUserNotificationsUseCase;
  final SecureStorage _secureStorage;

  NewsBloc({required GetUserNotificationsUseCase getUserNotificationsUseCase, required SecureStorage secureStorage})
      : _getUserNotificationsUseCase = getUserNotificationsUseCase,
        _secureStorage = secureStorage,
        super(NewsState.initial()) {
    on<NewsEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          newsCreated: () => _onNewsCreatedOrRefreshed(emit),
          newsRefreshed: () => _onNewsCreatedOrRefreshed(emit),
        );
      },
    );
  }

  Future<void> _onNewsCreatedOrRefreshed(Emitter<NewsState> emit) async {
    emit(state.copyWith(isLoading: true));

    Either<Failure, Success>? loadFailureOrSuccess;

    final newsResponse = await _getUserNotificationsUseCase(GetUserNotificationsParams(last: 0));

    newsResponse.fold((failure) => loadFailureOrSuccess = Left(failure),
        (success) => loadFailureOrSuccess = const Right(Success.genericSuccess()));
    final session = await _secureStorage.getSessionInformation();

    emit(
      state.copyWith(
          isLoading: false,
          loadFailureOrSuccess: loadFailureOrSuccess,
          news: newsResponse.getOrElse(() => []),
          token: session.token),
    );
  }
}
