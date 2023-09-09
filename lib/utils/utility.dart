import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/status/failures.dart';

String randomString() {
  final random = Random.secure();
  final values = List<int>.generate(16, (i) => random.nextInt(255));
  return base64UrlEncode(values);
}

showBasicErrorSnackbar(BuildContext context, Failure failure) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.red,
      content: Text(
        failure.maybeWhen<String>(
            passwordMismatchFailure: () => AppLocalizations.of(context)!.failureInvalidCredentials,
            genericFailure: () => AppLocalizations.of(context)!.failureGeneric,
            networkFailure: () => AppLocalizations.of(context)!.failureNetwork,
            orElse: () => AppLocalizations.of(context)!.failureUnknown),
      ),
    ),
  );
}

showBasicSuccessSnackbar(BuildContext context, String text) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.green,
      content: Text(text),
    ),
  );
}

LatLng getCenterPositionBasedOnLocale() {
  switch (Intl.getCurrentLocale()) {
    case "en":
      return const LatLng(51.5072, 0.1276);
    case "it":
      return const LatLng(41.9028, 12.4964);
    default:
      return const LatLng(0, 0);
  }
}
