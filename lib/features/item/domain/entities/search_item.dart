import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

// Just to commit

class SearchItem {
  final int id;
  final User user;
  final String title;
  final double distance;
  final DateTime date;
  final ItemType type;
  final bool hasImage;

  SearchItem({
    required this.id,
    required this.title,
    required this.distance,
    required this.date,
    required this.user,
    required this.type,
    required this.hasImage
  });
}

class User {
  final int id;
  final String username;

  User({required this.id, required this.username});
}