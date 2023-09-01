import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/news.dart';

class GetUserNotificationsUseCase implements UseCase<List<News>, NoParams> {
  final ItemRepository repository;

  GetUserNotificationsUseCase(this.repository);

  @override
  Future<Either<Failure, List<News>>> call(NoParams params) async {
    return await repository.getUserNotifications(params);
  }
}