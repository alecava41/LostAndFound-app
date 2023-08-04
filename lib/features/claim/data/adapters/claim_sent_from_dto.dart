import '../../../../core/domain/entities/claim_status.dart';
import '../../domain/entities/claim_sent.dart';
import '../models/claim_sent/claim_sent_dto.dart';

extension ClaimSentFromDto on ClaimSentDto {
  ClaimSent toDomain() {
    return ClaimSent(
      id: id,
      item: Item(id: item.id, title: item.title, hasImage: item.image),
      status: status == ClaimStatus.pending.name
          ? ClaimStatus.pending
          : (status == ClaimStatus.rejected.name ? ClaimStatus.rejected : ClaimStatus.approved)
    );
  }
}