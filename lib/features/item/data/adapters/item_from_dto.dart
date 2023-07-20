import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../domain/entities/item.dart';
import '../models/item/item_dto.dart';

extension ItemFromDto on ItemDto {
  Item toDomain() {
    return Item(
      id: id,
      title: title,
      insertion: date,
      user: User(id: user.id, username: user.username),
      type: type == "lost" ? ItemType.lost : ItemType.found,
      position: address,
      question: question
    );
  }
}
