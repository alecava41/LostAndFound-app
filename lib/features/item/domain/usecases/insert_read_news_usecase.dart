import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';


class InsertReadNewsUseCase implements UseCase<Success, InsertReadNewsParams> {
  final ItemRepository repository;

  InsertReadNewsUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(InsertReadNewsParams params) async {
    return await repository.insertReadNews(params);
  }
}

class InsertReadNewsParams {
  final int newsId;

  InsertReadNewsParams({
    required this.newsId
  });
}
