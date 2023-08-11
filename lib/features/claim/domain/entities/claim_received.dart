import '../../../../core/domain/entities/claim_status.dart';

class ClaimReceived {
  final int id;
  final Item item;
  final User user;
  final ClaimStatus status;
  bool opened;

  ClaimReceived({
    required this.id,
    required this.item,
    required this.user,
    required this.opened,
    required this.status,
  });
}

class Item {
  final int id;
  final String title;

  Item({required this.id, required this.title});
}

class User {
  final int id;
  final String username;
  final bool hasImage;

  User({required this.id, required this.username, required this.hasImage});
}
