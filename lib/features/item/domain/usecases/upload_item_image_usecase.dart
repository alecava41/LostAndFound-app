import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../../../../core/status/success.dart';


class UploadItemImageUseCase implements UseCase<Success, UploadItemImageParams> {
  final ItemRepository repository;

  UploadItemImageUseCase(this.repository);

  @override
  Future<Either<Failure, Success>> call(UploadItemImageParams params) async {
    return await repository.uploadItemImage(params);
  }
}

class UploadItemImageParams {
  final int itemId;
  final File image;

  UploadItemImageParams({
    required this.itemId,
    required this.image
  });
}