import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../core/domain/entities/category.dart';

class Item {
  final int id;
  final String title;
  final ItemType type;
  final String position;
  final DateTime insertion;
  final String? question;
  final User user;
  final Category category;
  final List<ClaimReceived>? claims;
  final ClaimSent? userClaim;

  const Item({
    required this.id,
    required this.title,
    required this.type,
    required this.position,
    required this.insertion,
    required this.question,
    required this.user,
    required this.category,
    required this.claims,
    required this.userClaim
  });
}

class User {
  final int id;
  final String username;

  const User({required this.id, required this.username});
}

class ClaimReceived {
  final int id;
  final ClaimStatus status;
  // TODO add other parameters based on UI requirements

  ClaimReceived({
    required this.id,
    required this.status
  });
}

class ClaimSent {
  final int id;
  final ClaimStatus status;

  ClaimSent({
    required this.id,
    required this.status
  });
}

enum ClaimStatus {
  pending,
  approved,
  rejected
}