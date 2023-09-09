import 'package:dartz/dartz.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';
import '../repositories/user_repository.dart';

part 'update_locale_usecase.g.dart';

class UpdateLocaleUseCase implements UseCase<Success, UpdateLocaleParams> {
  final UserRepository repository;

  UpdateLocaleUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(UpdateLocaleParams params) async {
    return await repository.updateLocale(params);
  }
}

@JsonSerializable()
class UpdateLocaleParams {
  final String locale;

  const UpdateLocaleParams({required this.locale});

  Map<String, dynamic> toJson() => _$UpdateLocaleParamsToJson(this);
}
