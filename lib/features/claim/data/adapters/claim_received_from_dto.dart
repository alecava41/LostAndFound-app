import 'package:lost_and_found/features/claim/data/models/claim_received/claim_received_dto.dart';
import 'package:lost_and_found/features/claim/domain/entities/claim_received.dart';

extension ClaimReceivedFromDto on ClaimReceivedDto {
  ClaimReceived toDomain() {
    return ClaimReceived(
      id: id,
      item: Item(id: item.id, title: item.title),
      user: User(id: user.id, username: user.username),
      opened: false
    );
  }
}