import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

class SearchItem {
  final int id;
  final User user;
  final String title;
  final ItemType type;

  SearchItem({
    required this.id,
    required this.title,
    required this.user,
    required this.type,
  });
}

class User {
  final int id;
  final String username;

  User({required this.id, required this.username});
}