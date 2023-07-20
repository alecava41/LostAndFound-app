import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

class Item {
  final int id;
  final String title;
  final ItemType type;
  final String position;
  final DateTime insertion;
  final String? question;
  final User user;
  // TODO handle claims

  const Item({
    required this.id,
    required this.title,
    required this.type,
    required this.position,
    required this.insertion,
    required this.question,
    required this.user
  });
}

class User {
  final int id;
  final String username;

  const User({required this.id, required this.username});
}
