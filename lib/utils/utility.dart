import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/status/failures.dart';

showBasicErrorSnackbar(BuildContext context, Failure failure) {
  failure.maybeWhen(
      validationFailure: () => null,
      orElse: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Theme.of(context).colorScheme.error,
              showCloseIcon: true,
              closeIconColor: Theme.of(context).colorScheme.onError,
              content: Text(
                failure.maybeWhen<String>(
                  passwordMismatchFailure: () => AppLocalizations.of(context)!.failureInvalidCredentials,
                  requestFailure: () => AppLocalizations.of(context)!.failureInvalidCredentials,
                  genericFailure: () => AppLocalizations.of(context)!.failureGeneric,
                  networkFailure: () => AppLocalizations.of(context)!.failureNetwork,
                  geolocationFailure: (_) => AppLocalizations.of(context)!.positionNotFound,
                  recordNotFoundFailure: () => AppLocalizations.of(context)!.failureInvalidCredentials,
                  orElse: () => AppLocalizations.of(context)!.failureUnknown,
                ),
                style: TextStyle(color: Theme.of(context).colorScheme.onError),
              ),
            ),
          ));
}

showBasicSuccessSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      showCloseIcon: true,
      closeIconColor: Theme.of(context).colorScheme.onPrimaryContainer,
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      content: Text(
        text,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimaryContainer),
      ),
    ),
  );
}

LatLng getCenterPositionBasedOnLocale(String languageCode) {
  switch (languageCode) {
    case "en":
      return const LatLng(51.5072, 0.1276);
    case "it":
      return const LatLng(41.9028, 12.4964);
    default:
      return const LatLng(0, 0);
  }
}
