import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:lost_and_found/core/data/datasources/category/category_data_source.dart';
import 'package:lost_and_found/core/data/datasources/category/client/category_client.dart';
import 'package:lost_and_found/core/data/datasources/claim/read_claim_datasource.dart';
import 'package:lost_and_found/core/data/datasources/position/client/position_client.dart';
import 'package:lost_and_found/core/data/datasources/position/position_data_source.dart';
import 'package:lost_and_found/core/data/repositories/category_repository_impl.dart';
import 'package:lost_and_found/core/data/repositories/position_repository_impl.dart';
import 'package:lost_and_found/core/domain/repositories/position_repository.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/core/domain/usecases/get_categories_usecase.dart';
import 'package:lost_and_found/core/network/network_info.dart';
import 'package:lost_and_found/core/presentation/home_controller/bloc/home_controller_bloc.dart';
import 'package:lost_and_found/core/presentation/select_category/bloc/category_bloc.dart';
import 'package:lost_and_found/features/authentication/data/datasources/auth_client.dart';
import 'package:lost_and_found/features/authentication/data/datasources/authentication_data_source.dart';
import 'package:lost_and_found/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:lost_and_found/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/login_usecase.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/registration_usecase.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';
import 'package:lost_and_found/features/claim/data/datasources/claim_client.dart';
import 'package:lost_and_found/features/claim/data/datasources/claim_datasource.dart';
import 'package:lost_and_found/features/claim/domain/repositories/claim_repository.dart';
import 'package:lost_and_found/features/claim/domain/usecases/create_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_received_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/item/data/datasources/item_client.dart';
import 'package:lost_and_found/features/item/data/datasources/item_data_source.dart';
import 'package:lost_and_found/features/item/data/datasources/read_news_datasource.dart';
import 'package:lost_and_found/features/item/data/repositories/item_repository_impl.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/item/item_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';

import 'core/data/datasources/http_interceptor.dart';
import 'core/data/secure_storage/secure_storage.dart';
import 'core/domain/repositories/category_repository.dart';
import 'core/presentation/select_position/bloc/select_position_bloc.dart';
import 'features/authentication/domain/usecases/logout_use_case.dart';
import 'features/claim/data/repositories/claim_repository_impl.dart';
import 'features/claim/presentation/bloc/answer_question/answer_question_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // ** Feature - Authentication **
  // BLoC
  sl.registerFactory(() => LoginBloc(loginUseCase: sl()));
  sl.registerFactory(() => RegistrationBloc(registrationUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => RegistrationUseCase(sl()));
  sl.registerLazySingleton(() => LogoutUseCase(sl()));

  // Repository
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(networkInfo: sl(), dataSource: sl(), storage: sl()));

  // Data source
  sl.registerLazySingleton<AuthenticationDataSource>(() => AuthenticationDataSourceImpl(client: sl()));

  // ** Feature - Item **
  // BLoC
  sl.registerFactory(() => HomeBloc(getUserItemsUseCase: sl(), secureStorage: sl()));
  sl.registerFactory(() => NewsBloc(getUserNotificationsUseCase: sl(), secureStorage: sl()));
  sl.registerFactory(
      () => SearchBloc(searchItemsUseCase: sl(), secureStorage: sl(), getAddressFromPositionUseCase: sl()));
  sl.registerFactory(() => ItemBloc(getItemUseCase: sl(), secureStorage: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetUserItemsUseCase(sl()));
  sl.registerLazySingleton(() => GetUserNotificationsUseCase(sl()));
  sl.registerLazySingleton(() => SearchItemsUseCase(sl()));
  sl.registerLazySingleton(() => GetItemUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ItemRepository>(() => ItemRepositoryImpl(
      dataSource: sl(), storage: sl(), networkInfo: sl(), readNewsDataSource: sl(), readClaimDataSource: sl()));

  // Data source
  sl.registerLazySingleton<ItemDataSource>(() => ItemDataSourceImpl(sl()));
  sl.registerLazySingleton<ReadNewsDataSource>(() => ReadNewsDataSourceImpl());

  // ** Feature - Claim **
  // BLoC
  sl.registerFactory(() => ClaimBloc(getReceivedClaimsUseCase: sl(), getSentClaimsUseCase: sl(), secureStorage: sl()));
  sl.registerFactory(() => AnswerQuestionBloc(storage: sl(), createClaimUseCase: sl(), getItemUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetReceivedClaimsUseCase(sl()));
  sl.registerLazySingleton(() => GetSentClaimsUseCase(sl()));
  sl.registerLazySingleton(() => CreateClaimUseCase(sl()));
  sl.registerLazySingleton(() => ManageClaimUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ClaimRepository>(
      () => ClaimRepositoryImpl(dataSource: sl(), networkInfo: sl(), readClaimsDataSource: sl(), storage: sl()));

  // Data source
  sl.registerLazySingleton<ClaimDataSource>(() => ClaimDataSourceImpl(sl()));

  // ** External - Generic **
  // Use cases
  sl.registerLazySingleton(() => GetAddressFromPositionUseCase(sl()));
  sl.registerLazySingleton(() => GetCategoriesUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<PositionRepository>(() => PositionRepositoryImpl(dataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(dataSource: sl(), networkInfo: sl()));

  // Data sources
  sl.registerLazySingleton<PositionDataSource>(() => PositionDataSourceImpl(sl()));
  sl.registerLazySingleton<CategoryDataSource>(() => CategoryDataSourceImpl(sl()));
  sl.registerLazySingleton<ReadClaimDataSource>(() => ReadClaimDataSourceImpl());

  // Storage
  sl.registerLazySingleton<SecureStorage>(() => SecureStorageImpl(sl()));

  const storage = FlutterSecureStorage();
  sl.registerLazySingleton(() => storage);

  // Connection checker
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // HTTP clients
  final dio = Dio();
  dio.interceptors.add(HttpInterceptor(storage));
  dio.interceptors.add(HttpFormatter());

  sl.registerLazySingleton(() => dio);
  sl.registerLazySingleton(() => AuthClient(sl()));
  sl.registerLazySingleton(() => ItemClient(sl()));
  sl.registerLazySingleton(() => ClaimClient(sl()));
  sl.registerLazySingleton(() => PositionClient(sl()));
  sl.registerLazySingleton(() => CategoryClient(sl()));

  // Global BLoCs
  sl.registerFactory(() => HomeControllerBloc());
  sl.registerFactory(() => SelectPositionBloc(networkInfo: sl()));
  sl.registerFactory(() => CategoryBloc(getCategoriesUseCase: sl()));
}
