import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum ClaimStatus { pending, approved, rejected }

extension ClaimStatusExtension on ClaimStatus {
  String getTranslatedName(BuildContext context) {
    switch (this) {
      case ClaimStatus.pending:
        return AppLocalizations.of(context)!.claimStatusPending;
      case ClaimStatus.approved:
        return AppLocalizations.of(context)!.claimStatusApproved;
      case ClaimStatus.rejected:
        return AppLocalizations.of(context)!.claimStatusRejected;
    }
  }
}
