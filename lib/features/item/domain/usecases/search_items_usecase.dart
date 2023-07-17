import 'package:dartz/dartz.dart';
import 'package:lost_and_found/features/item/domain/repositories/item_repository.dart';

import '../../../../core/domain/usecases/usecase.dart';
import '../../../../core/status/failures.dart';
import '../entities/search_item.dart';

class SearchItemsUseCase implements UseCase<List<SearchItem>, SearchItemsParams> {
  final ItemRepository repository;

  SearchItemsUseCase(this.repository);

  @override
  Future<Either<Failure, List<SearchItem>>> call(SearchItemsParams params) async {
    return await repository.searchItems(params);
  }
}

class SearchItemsParams {
  final int last;
  final int range;
  final double X;
  final double Y;
  final SearchItemOrder order;
  final SearchItemType type;
  final int category;
  final DateTime date;

  SearchItemsParams({
    required this.last,
    required this.range,
    required this.X,
    required this.Y,
    required this.order,
    required this.type,
    required this.category,
    required this.date
  });
}

enum SearchItemOrder {
  date,
  distance
}

enum SearchItemType {
  found,
  lost,
  both
}