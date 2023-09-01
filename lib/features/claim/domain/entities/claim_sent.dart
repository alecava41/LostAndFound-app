import '../../../../core/domain/entities/claim_status.dart';

class ClaimSent {
  final int id;
  final SentItem item;
  final ClaimStatus status;

  ClaimSent({
    required this.id,
    required this.item,
    required this.status
  });
}

class SentItem {
  final int id;
  final String title;
  final bool hasImage;

  SentItem({required this.id, required this.title, required this.hasImage});
}