import '../../../../core/domain/entities/claim_status.dart';

class ClaimSent {
  final int id;
  final Item item;
  final ClaimStatus status;

  ClaimSent({
    required this.id,
    required this.item,
    required this.status
  });
}

class Item {
  final int id;
  final String title;
  final bool hasImage;

  Item({required this.id, required this.title, required this.hasImage});
}