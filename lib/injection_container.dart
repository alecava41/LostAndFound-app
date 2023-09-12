import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:lost_and_found/core/data/datasources/app_global/app_global_data_source.dart';
import 'package:lost_and_found/core/data/datasources/app_global/clients/app_global_client.dart';
import 'package:lost_and_found/core/data/datasources/category/category_data_source.dart';
import 'package:lost_and_found/core/data/datasources/category/clients/category_client.dart';
import 'package:lost_and_found/core/data/datasources/claim/read_claim_datasource.dart';
import 'package:lost_and_found/core/data/datasources/position/client/position_client.dart';
import 'package:lost_and_found/core/data/datasources/position/position_data_source.dart';
import 'package:lost_and_found/core/data/repositories/app_global_repository_impl.dart';
import 'package:lost_and_found/core/data/repositories/category_repository_impl.dart';
import 'package:lost_and_found/core/data/repositories/position_repository_impl.dart';
import 'package:lost_and_found/core/domain/repositories/app_global_repository.dart';
import 'package:lost_and_found/core/domain/repositories/position_repository.dart';
import 'package:lost_and_found/core/domain/usecases/get_address_from_position_usecase.dart';
import 'package:lost_and_found/core/domain/usecases/get_categories_usecase.dart';
import 'package:lost_and_found/core/domain/usecases/get_current_country_usecase.dart';
import 'package:lost_and_found/core/network/network_info.dart';
import 'package:lost_and_found/core/presentation/home_controller/bloc/home_controller_bloc.dart';
import 'package:lost_and_found/core/presentation/select_category/bloc/category_bloc.dart';
import 'package:lost_and_found/features/authentication/data/datasources/auth_client.dart';
import 'package:lost_and_found/features/authentication/data/datasources/authentication_data_source.dart';
import 'package:lost_and_found/features/authentication/data/repositories/authentication_repository_impl.dart';
import 'package:lost_and_found/core/domain/repositories/authentication_repository.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/login_usecase.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/registration_usecase.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/login/login_bloc.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:lost_and_found/features/authentication/presentation/bloc/registration/registration_bloc.dart';
import 'package:lost_and_found/features/badges/data/datasources/badge_client.dart';
import 'package:lost_and_found/features/badges/data/datasources/badge_data_source.dart';
import 'package:lost_and_found/features/badges/domain/repositories/badge_repository.dart';
import 'package:lost_and_found/features/badges/domain/usecases/get_unread_news_usecase.dart';
import 'package:lost_and_found/features/badges/domain/usecases/get_unread_received_claims_usecase.dart';
import 'package:lost_and_found/features/badges/presentation/bloc/badge_bloc.dart';
import 'package:lost_and_found/features/chat/data/datasources/chat_client.dart';
import 'package:lost_and_found/features/chat/data/datasources/chat_data_source.dart';
import 'package:lost_and_found/features/chat/data/repositories/chat_repository_impl.dart';
import 'package:lost_and_found/features/chat/domain/repositories/chat_repository.dart';
import 'package:lost_and_found/features/chat/domain/usecases/create_room_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/get_room_messages_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/login_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/logout_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/read_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/registration_chat_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/send_message_usecase.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/chat/chat_bloc.dart';
import 'package:lost_and_found/features/chat/presentation/bloc/inbox/inbox_bloc.dart';
import 'package:lost_and_found/features/claim/data/datasources/claim_client.dart';
import 'package:lost_and_found/features/claim/data/datasources/claim_datasource.dart';
import 'package:lost_and_found/features/claim/domain/repositories/claim_repository.dart';
import 'package:lost_and_found/features/claim/domain/usecases/create_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_received_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/get_sent_claims_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/insert_read_claim_usecase.dart';
import 'package:lost_and_found/features/claim/domain/usecases/manage_claim_usecase.dart';
import 'package:lost_and_found/features/claim/presentation/bloc/claim/claim_bloc.dart';
import 'package:lost_and_found/features/item/data/datasources/item_client.dart';
import 'package:lost_and_found/features/item/data/datasources/item_data_source.dart';
import 'package:lost_and_found/core/data/datasources/news/read_news_datasource.dart';
import 'package:lost_and_found/features/item/data/repositories/item_repository_impl.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';
import 'package:lost_and_found/features/item/domain/usecases/create_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_image_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/delete_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/get_user_notifications_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/insert_read_news_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/search_items_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/solve_item_usecase.dart';
import 'package:lost_and_found/features/item/domain/usecases/update_item_usecase.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/item/item_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/update_item/update_item_bloc.dart';
import 'package:lost_and_found/features/user/data/datasources/user_client.dart';
import 'package:lost_and_found/features/user/data/datasources/user_data_source.dart';
import 'package:lost_and_found/features/user/domain/repositories/user_repository.dart';
import 'package:lost_and_found/features/user/domain/usecases/get_user_info_usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_locale_usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_password_usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/upload_user_image_usecase.dart';
import 'package:lost_and_found/features/user/presentation/bloc/change_password/change_password_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';

import 'core/data/datasources/database/database.dart';
import 'core/data/datasources/http_interceptor.dart';
import 'core/data/secure_storage/secure_storage.dart';
import 'core/domain/repositories/category_repository.dart';
import 'core/presentation/app_global/bloc/app_global_bloc.dart';
import 'core/presentation/select_position/bloc/select_position_bloc.dart';
import 'features/badges/data/repositories/badge_repository_impl.dart';
import 'features/chat/domain/usecases/get_user_rooms_usecase.dart';
import 'features/claim/data/repositories/claim_repository_impl.dart';
import 'features/claim/presentation/bloc/answer_claim/answer_claim_bloc.dart';
import 'features/claim/presentation/bloc/answer_question/answer_question_bloc.dart';
import 'features/item/domain/usecases/upload_item_image_usecase.dart';
import 'features/item/presentation/bloc/insert_item/insert_item_bloc.dart';
import 'features/user/data/repositories/user_repository_impl.dart';
import 'features/user/domain/usecases/logout_usecase.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // ** Feature - Authentication **
  // BLoC
  sl.registerFactory(() => LoginBloc(loginUseCase: sl(), loginChatUseCase: sl()));
  sl.registerFactory(() => RegistrationBloc(registrationUseCase: sl(), registrationChatUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => LoginUseCase(sl()));
  sl.registerLazySingleton(() => RegistrationUseCase(sl()));

  // Data source
  sl.registerLazySingleton<AuthenticationDataSource>(() => AuthenticationDataSourceImpl(client: sl()));

  // ** Feature - Item **
  // BLoC
  sl.registerFactory(() => HomeBloc(getUserItemsUseCase: sl(), secureStorage: sl()));
  sl.registerFactory(() => NewsBloc(getUserNotificationsUseCase: sl(), secureStorage: sl(), insertReadNewsUseCase: sl()));
  sl.registerFactory(
      () => SearchBloc(searchItemsUseCase: sl(), secureStorage: sl(), getAddressFromPositionUseCase: sl()));
  sl.registerFactory(() => ItemBloc(
        getItemUseCase: sl(),
        secureStorage: sl(),
        solveItemUseCase: sl(),
        deleteItemUseCase: sl(),
        insertReadClaimUseCase: sl(),
        createRoomUseCase: sl(),
      ));
  sl.registerFactory(
      () => InsertItemBloc(createItemUseCase: sl(), getAddressFromPositionUseCase: sl(), uploadItemImageUseCase: sl()));
  sl.registerFactory(() => UpdateItemBloc(
      getItemUseCase: sl(),
      uploadItemImageUseCase: sl(),
      deleteItemImageUseCase: sl(),
      updateItemUseCase: sl(),
      getAddressFromPositionUseCase: sl(),
      secureStorage: sl()));

  // Use Cases
  sl.registerLazySingleton(() => GetUserItemsUseCase(sl()));
  sl.registerLazySingleton(() => GetUserNotificationsUseCase(sl()));
  sl.registerLazySingleton(() => SearchItemsUseCase(sl()));
  sl.registerLazySingleton(() => GetItemUseCase(sl()));
  sl.registerLazySingleton(() => CreateItemUseCase(sl()));
  sl.registerLazySingleton(() => UploadItemImageUseCase(sl()));
  sl.registerLazySingleton(() => SolveItemUseCase(sl()));
  sl.registerLazySingleton(() => DeleteItemUseCase(sl()));
  sl.registerLazySingleton(() => UpdateItemUseCase(sl()));
  sl.registerLazySingleton(() => DeleteItemImageUseCase(sl()));
  sl.registerLazySingleton(() => InsertReadNewsUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ItemRepository>(
      () => ItemRepositoryImpl(dataSource: sl(), networkInfo: sl(), readNewsDataSource: sl(), readClaimDataSource: sl()));

  // Data source
  sl.registerLazySingleton<ItemDataSource>(() => ItemDataSourceImpl(sl()));
  sl.registerLazySingleton<ReadNewsDataSource>(() => ReadNewsDataSourceImpl(database: sl()));

  // ** Feature - Claim **
  // BLoC
  sl.registerFactory(() => ClaimBloc(
      getReceivedClaimsUseCase: sl(), getSentClaimsUseCase: sl(), secureStorage: sl(), insertReadClaimUseCase: sl()));
  sl.registerFactory(
      () => AnswerQuestionBloc(storage: sl(), createClaimUseCase: sl(), getItemUseCase: sl(), createRoomUseCase: sl()));
  sl.registerFactory(
      () => AnswerClaimBloc(getItemUseCase: sl(), storage: sl(), manageClaimUseCase: sl(), createRoomUseCase: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetReceivedClaimsUseCase(sl()));
  sl.registerLazySingleton(() => GetSentClaimsUseCase(sl()));
  sl.registerLazySingleton(() => CreateClaimUseCase(sl()));
  sl.registerLazySingleton(() => ManageClaimUseCase(sl()));
  sl.registerLazySingleton(() => InsertReadClaimUseCase(sl()));

  // Repository
  sl.registerLazySingleton<ClaimRepository>(
      () => ClaimRepositoryImpl(dataSource: sl(), networkInfo: sl(), readClaimsDataSource: sl()));

  // Data source
  sl.registerLazySingleton<ClaimDataSource>(() => ClaimDataSourceImpl(sl()));

  // ** Feature - User **
  // BLoC
  sl.registerFactory(() => UserBloc(
      getUserInfoUseCase: sl(),
      secureStorage: sl(),
      logoutUseCase: sl(),
      uploadUserImageUseCase: sl(),
      logoutChatUseCase: sl()));
  sl.registerFactory(() => ChangePasswordBloc(updatePasswordUseCase: sl(), storage: sl(), loginUseCase: sl()));

  // Use Cases
  sl.registerLazySingleton(() => GetUserInfoUseCase(sl()));
  sl.registerLazySingleton(() => LogoutUseCase(sl()));
  sl.registerLazySingleton(() => UploadUserImageUseCase(sl()));
  sl.registerLazySingleton(() => UpdatePasswordUseCase(sl()));
  sl.registerLazySingleton(() => UpdateLocaleUseCase(sl()));

  // Repository
  sl.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(storage: sl(), networkInfo: sl(), dataSource: sl()));

  // Data sources
  sl.registerLazySingleton<UserDataSource>(() => UserDataSourceImpl(sl()));

  // ** Feature - Badge **
  // BLoC
  sl.registerFactory(() => BadgeBloc(
      getUnreadNewsUseCase: sl(), getUnreadReceivedClaimsUseCase: sl(), getUserRoomsUseCase: sl(), storage: sl()));

  // Use cases
  sl.registerLazySingleton(() => GetUnreadNewsUseCase(sl()));
  sl.registerLazySingleton(() => GetUnreadReceivedClaimsUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<BadgeRepository>(() => BadgeRepositoryImpl(
      storage: sl(), networkInfo: sl(), dataSource: sl(), readNewsDataSource: sl(), readClaimDataSource: sl()));

  // Data sources
  sl.registerLazySingleton<BadgeDataSource>(() => BadgeDataSourceImpl(sl()));

  // ** Feature - Chat **
  // BLoC
  sl.registerFactory(() => InboxBloc(
        loginChatUseCase: sl(),
        getUserRoomsUseCase: sl(),
        storage: sl(),
      ));

  sl.registerFactory(() => ChatBloc(
        getRoomMessagesUseCase: sl(),
        getItemUseCase: sl(),
        sendMessageUseCase: sl(),
        storage: sl(),
        readChatUseCase: sl(),
      ));

  // Use cases
  sl.registerLazySingleton(() => LoginChatUseCase(sl()));
  sl.registerLazySingleton(() => LogoutChatUseCase(sl()));
  sl.registerLazySingleton(() => RegistrationChatUseCase(sl()));
  sl.registerLazySingleton(() => GetUserRoomsUseCase(sl()));
  sl.registerLazySingleton(() => CreateRoomUseCase(sl()));
  sl.registerLazySingleton(() => GetRoomMessagesUseCase(sl()));
  sl.registerLazySingleton(() => SendMessageUseCase(sl()));
  sl.registerLazySingleton(() => ReadChatUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<ChatRepository>(() => ChatRepositoryImpl(sl(), sl(), sl()));

  // Data sources
  sl.registerLazySingleton<ChatDataSource>(() => ChatDataSourceImpl(sl()));

  // ** External - Generic **
  // Use cases
  sl.registerLazySingleton(() => GetAddressFromPositionUseCase(sl()));
  sl.registerLazySingleton(() => GetCategoriesUseCase(sl()));
  sl.registerLazySingleton(() => GetCurrentCountryUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<PositionRepository>(() => PositionRepositoryImpl(dataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<CategoryRepository>(() => CategoryRepositoryImpl(dataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<AuthenticationRepository>(
      () => AuthenticationRepositoryImpl(networkInfo: sl(), dataSource: sl(), storage: sl()));
  sl.registerLazySingleton<AppGlobalRepository>(() => AppGlobalRepositoryImpl(networkInfo: sl(), appGlobalDataSource: sl()));

  // Data sources
  sl.registerLazySingleton<PositionDataSource>(() => PositionDataSourceImpl(sl()));
  sl.registerLazySingleton<CategoryDataSource>(() => CategoryDataSourceImpl(sl()));
  sl.registerLazySingleton<ReadClaimDataSource>(() => ReadClaimDataSourceImpl(database: sl()));
  sl.registerLazySingleton<AppGlobalDataSource>(() => AppGlobalDataSourceImpl(sl()));

  // Storage
  sl.registerLazySingleton<SecureStorage>(() => SecureStorageImpl(sl()));

  const storage = FlutterSecureStorage();
  sl.registerLazySingleton(() => storage);

  // Connection checker
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // Database
  final database = await $FloorAppDatabase.databaseBuilder('lostandfound.db').build();
  sl.registerLazySingleton(() => database);

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
  sl.registerLazySingleton(() => UserClient(sl()));
  sl.registerLazySingleton(() => BadgeClient(sl()));
  sl.registerLazySingleton(() => ChatClient(sl()));
  sl.registerLazySingleton(() => AppGlobalClient(sl()));

  // Global BLoCs
  sl.registerFactory(() => HomeControllerBloc());
  sl.registerFactory(() => SelectPositionBloc(networkInfo: sl()));
  sl.registerFactory(() => CategoryBloc(getCategoriesUseCase: sl()));
  sl.registerFactory(() => AppGlobalBloc(storage: sl(), updateLocaleUseCase: sl(), getCurrentCountryUseCase: sl()));
}
