import 'package:lost_and_found/features/item/data/models/news/news_dto.dart';
import 'package:lost_and_found/features/item/domain/entities/news.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

extension NewsFromDto on NewsDto {
  News toDomain() {
    return News(
        id: id,
        dateTime: DateTime.parse(datetime),
        subject: Subject(id: subject.id, title: subject.title, type: subject.type == "lost" ? ItemType.lost : ItemType.found),
        targetId: target.id,
        targetUser: User(id: target.user.id, username: target.user.username, hasImage: target.user.image),
        opened: false
    );
  }
}