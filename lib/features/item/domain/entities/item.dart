import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../core/domain/entities/category.dart';
import '../../../../core/domain/entities/claim_status.dart';

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

  ClaimSent({
    required this.id,
    required this.status
  });
}