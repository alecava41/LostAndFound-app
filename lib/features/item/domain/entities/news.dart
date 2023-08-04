import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

class News {
  final int id;
  final DateTime dateTime;
  bool opened;
  final Subject subject;
  final int targetId;
  final User targetUser;

  News(
      {required this.id,
      required this.dateTime,
      required this.opened,
      required this.subject,
      required this.targetId,
      required this.targetUser});
}

class Subject {
  final int id;
  final String title;
  final ItemType type;

  Subject({required this.id, required this.title, required this.type});
}

class User {
  final int id;
  final String username;
  final bool hasImage;

  User({required this.id, required this.username, required this.hasImage});
}
