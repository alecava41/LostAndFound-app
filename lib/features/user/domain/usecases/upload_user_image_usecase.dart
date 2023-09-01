import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../repositories/user_repository.dart';

class UploadUserImageUseCase implements UseCase<Success, UploadUserImageParams> {
  final UserRepository repository;

  UploadUserImageUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(UploadUserImageParams params) async {
    return await repository.uploadUserImage(params);
  }
}

class UploadUserImageParams {
  final File image;

  UploadUserImageParams({required this.image});
}
