import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../repositories/user_repository.dart';

part 'update_password_usecase.g.dart';

class UpdatePasswordUseCase implements UseCase<Success, UpdatePasswordParams> {
  final UserRepository repository;

  UpdatePasswordUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(UpdatePasswordParams params) async {
    return await repository.updatePassword(params);
  }
}

@JsonSerializable()
class UpdatePasswordParams {
  final String oldPassword;
  final String newPassword;

  const UpdatePasswordParams({required this.oldPassword, required this.newPassword});

  Map<String, dynamic> toJson() => _$UpdatePasswordParamsToJson(this);
}
