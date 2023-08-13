import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:lost_and_found/core/status/failures.dart';
import 'package:lost_and_found/core/domain/repositories/authentication_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/success.dart';

part 'registration_usecase.g.dart';

class RegistrationUseCase implements UseCase<Success, RegistrationParams> {
  final AuthenticationRepository repository;

  RegistrationUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(RegistrationParams params) async {
    return await repository.register(params);
  }
}

@JsonSerializable()
class RegistrationParams {
  final String email;
  final String username;
  final String password;
  final String? token;
  final String? device;

  RegistrationParams({required this.email, this.token, this.device, required this.username, required this.password});

  Map<String, dynamic> toJson() => _$RegistrationParamsToJson(this);
}
