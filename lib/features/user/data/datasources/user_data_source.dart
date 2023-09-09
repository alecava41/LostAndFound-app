import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/user/data/datasources/user_client.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_locale_usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/update_password_usecase.dart';
import 'package:lost_and_found/features/user/domain/usecases/upload_user_image_usecase.dart';

import '../../../../core/data/datasources/utils.dart';
import '../models/get_user/user_dto.dart';

abstract class UserDataSource {
  Future<UserDto> getUserInfo(NoParams params, int userId);
  Future<void> uploadUserImage(UploadUserImageParams params);
  Future<void> updatePassword(UpdatePasswordParams params);
  Future<void> updateLocale(UpdateLocaleParams params);
}

class UserDataSourceImpl implements UserDataSource {
  final UserClient _client;

  UserDataSourceImpl(this._client);

  @override
  Future<UserDto> getUserInfo(NoParams params, int userId) {
    return _client.getUserInfo(userId).catchError(handleError<UserDto>);
  }

  @override
  Future<void> uploadUserImage(UploadUserImageParams params) {
    return _client.uploadUserImage(params.image).catchError(handleError<void>);
  }

  @override
  Future<void> updatePassword(UpdatePasswordParams params) {
    return _client.updatePassword(params).catchError(handleError<void>);
  }

  @override
  Future<void> updateLocale(UpdateLocaleParams params) {
    return _client.updateLocale(params).catchError(handleError<void>);
  }

}
