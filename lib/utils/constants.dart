import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

// "http://16.170.98.131:5000" http://192.168.178.41:5000
const String baseUrl = "http://16.170.98.131:5000";
const defaultPosition = LatLng(43.102107520506756, 12.349117446797067);

enum NotificationType {
  item,
  newClaim,
  sentClaim,
  chat
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "Main Navigator");
