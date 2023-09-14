import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../core/domain/entities/category.dart';
import '../../../../core/domain/entities/claim_status.dart';

class Item {
  final int id;
  final bool resolved;
  final String title;
  final ItemType type;
  final String address;
  final Position position;
  final DateTime insertion;
  final String? question;
  final User user;
  final Category category;
  final List<ClaimReceived>? claims;
  final ClaimSent? userClaim;
  final List<News>? news;

  const Item(
      {required this.id,
      required this.resolved,
      required this.news,
      required this.title,
      required this.type,
      required this.address,
      required this.position,
      required this.insertion,
      required this.question,
      required this.user,
      required this.category,
      required this.claims,
      required this.userClaim});
}

class News {
  final int itemId;
  final String title;

  News({required this.itemId, required this.title});
}

class Position {
  final double X;
  final double Y;

  Position({required this.X, required this.Y});
}

class User {
  final int id;
  final String username;

  const User({required this.id, required this.username});
}

class ClaimReceived {
  final int id;
  final ClaimStatus status;
  final String answer;
  bool opened;
  final User user;

  ClaimReceived({
    required this.id,
    required this.status,
    required this.answer,
    required this.opened,
    required this.user,
  });
}

class ClaimSent {
  final int id;
  final ClaimStatus status;
  final String? answer;

  ClaimSent({required this.id, required this.status, required this.answer});
}
