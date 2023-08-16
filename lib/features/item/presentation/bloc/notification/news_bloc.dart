import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';

import '../../../../../core/data/secure_storage/secure_storage.dart';
import '../../../../../core/status/failures.dart';
import '../../../../../core/status/success.dart';
import '../../../domain/entities/news.dart';
import '../../../domain/usecases/insert_read_news_usecase.dart';

part 'news_bloc.freezed.dart';

part 'news_event.dart';

part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetUserNotificationsUseCase _getUserNotificationsUseCase;
  final InsertReadNewsUseCase _insertReadNewsUseCase;
  final SecureStorage _secureStorage;

  NewsBloc(
      {required GetUserNotificationsUseCase getUserNotificationsUseCase,
      required SecureStorage secureStorage,
      required InsertReadNewsUseCase insertReadNewsUseCase})
      : _getUserNotificationsUseCase = getUserNotificationsUseCase,
        _secureStorage = secureStorage,
        _insertReadNewsUseCase = insertReadNewsUseCase,
        super(NewsState.initial()) {
    on<NewsEvent>(
      (event, emit) async {
        await event.when<FutureOr<void>>(
          newsCreated: () => _onNewsCreatedOrRefreshed(emit),
          newsRefreshed: () => _onNewsCreatedOrRefreshed(emit),
          newsRead: (id) => _onNewsRead(emit, id),
        );
      },
    );
  }

  Future<void> _onNewsRead(Emitter<NewsState> emit, int id) async {
    final response = await _insertReadNewsUseCase(InsertReadNewsParams(newsId: id));
    response.fold(
            (_) => null,
            (_) {
              final token = state.token;
              state.news.firstWhere((element) => element.id == id).opened = true;
              emit(state.copyWith(token: ""));
              emit(state.copyWith(token: token));
            });
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
        token: session != null ? session.token : "",
      ),
    );
  }
}
