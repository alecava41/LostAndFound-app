import 'package:lost_and_found/features/item/data/models/search_item/search_item_dto.dart';

import '../../domain/entities/search_item.dart';

extension SearchItemFromDto on SearchItemDto {
  SearchItem toDomain() {
    return SearchItem(
      id: id,
      title: title,
      user: User(id: user.id, username: user.username)
    );
  }
}