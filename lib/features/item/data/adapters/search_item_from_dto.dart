import 'package:lost_and_found/features/item/data/models/search_item/search_item_dto.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../domain/entities/search_item.dart';

extension SearchItemFromDto on SearchItemDto {
  SearchItem toDomain() {
    return SearchItem(
        id: id,
        title: title,
        hasImage: image,
        user: User(id: user.id, username: user.username),
        type: type == "found" ? ItemType.found : ItemType.lost);
  }
}
