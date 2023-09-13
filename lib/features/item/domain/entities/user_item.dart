import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserItem {
  final int id;
  final String title;
  final int claims;
  final int approvedClaims;

  const UserItem({
    required this.id,
    required this.title,
    required this.claims,
    required this.approvedClaims,
  });
}

enum ItemType { found, lost }

extension ItemTypeExtension on ItemType {
  String getTranslatedName(BuildContext context) {
    switch (this) {
      case ItemType.lost:
        return AppLocalizations.of(context)!.itemTypeLost;
      case ItemType.found:
        return AppLocalizations.of(context)!.itemTypeFound;
    }
  }
}
