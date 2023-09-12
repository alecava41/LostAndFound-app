import 'package:lost_and_found/core/domain/entities/category.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../../../core/domain/entities/claim_status.dart';
import '../../domain/entities/item.dart';
import '../models/item/item_dto.dart';

extension ItemFromDto on ItemDto {
  Item toDomain() {
    return Item(
      id: id,
      resolved: resolved,
      title: title,
      insertion: date,
      user: User(id: user.id, username: user.username, hasImage: user.image),
      type: type == "lost" ? ItemType.lost : ItemType.found,
      address: address,
      question: question,
      claims: claims
          ?.map((claim) => ClaimReceived(
              id: claim.id,
              answer: claim.answer,
              status: claim.status == ClaimStatus.pending.name
                  ? ClaimStatus.pending
                  : (claim.status == ClaimStatus.rejected.name ? ClaimStatus.rejected : ClaimStatus.approved),
          user: User(id: claim.user.id, username: claim.user.username, hasImage: claim.user.image),
          opened: false))
          .toList(),
      userClaim: userClaim != null
          ? ClaimSent(
              id: userClaim!.id,
              status: userClaim!.status == ClaimStatus.pending.name
                  ? ClaimStatus.pending
                  : (userClaim!.status == ClaimStatus.rejected.name ? ClaimStatus.rejected : ClaimStatus.approved), answer: userClaim!.answer)
          : null,
      category: Category(id: category.id, icon: category.icon, name: category.name, description: category.description),
      position: Position(X: position.X, Y: position.Y),
      hasImage: image,
    );
  }
}
