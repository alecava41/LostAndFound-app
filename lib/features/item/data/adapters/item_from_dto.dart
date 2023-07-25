import 'package:lost_and_found/core/domain/entities/category.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';

import '../../domain/entities/item.dart';
import '../models/item/item_dto.dart';

extension ItemFromDto on ItemDto {
  Item toDomain() {
    return Item(
      id: id,
      title: title,
      insertion: date,
      user: User(id: user.id, username: user.username),
      type: type == "lost" ? ItemType.lost : ItemType.found,
      position: address,
      question: question,
      claims: claims
          ?.map((claim) => ClaimReceived(
              id: claim.id,
              status: claim.status == ClaimStatus.pending.name
                  ? ClaimStatus.pending
                  : (claim.status == ClaimStatus.rejected.name ? ClaimStatus.rejected : ClaimStatus.approved)))
          .toList(),
      userClaim: userClaim != null
          ? ClaimSent(
              id: userClaim!.id,
              status: userClaim!.status == ClaimStatus.pending.name
                  ? ClaimStatus.pending
                  : (userClaim!.status == ClaimStatus.rejected.name ? ClaimStatus.rejected : ClaimStatus.approved))
          : null,
      category: Category(id: category.id, icon: category.icon, name: category.name),
    );
  }
}
