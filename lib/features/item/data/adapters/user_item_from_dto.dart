import 'package:lost_and_found/features/item/data/models/user_item/user_item_dto.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

extension UserItemFromDto on UserItemDto {
  UserItem toDomain() {
    return UserItem(
        id: id,
        title: title,
        claims: claims
    );
  }
}