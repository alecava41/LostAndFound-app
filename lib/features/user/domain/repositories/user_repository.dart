import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/user/domain/usecases/upload_user_image_usecase.dart';
import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';

import '../../../../core/status/success.dart';
import '../entities/user.dart';
import '../usecases/update_password_usecase.dart';

abstract class UserRepository {
  Future<Either<Failure, User>> getUserInfo(NoParams params);
  Future<Either<Failure, Success>> uploadUserImage(UploadUserImageParams params);
  Future<Either<Failure, Success>> updatePassword(UpdatePasswordParams params);
}