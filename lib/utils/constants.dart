import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';


// flutter pub run build_runner watch --delete-conflicting-outputs
const String baseUrl = "http://16.16.64.106:5000";

const defaultPosition = LatLng(43.102107520506756, 12.349117446797067);

enum NotificationType {
  item,
  newClaim,
  sentClaim,
  chat
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "Main Navigator");
