import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';


// flutter pub run build_runner watch --delete-conflicting-outputs
// Base URL of back-end server
const String baseUrl = "http://16.16.64.106:5000";

// Default Position - Center of the current locale (Italy)
const defaultPosition = LatLng(43.102107520506756, 12.349117446797067);

// Types of Push Notifications
enum NotificationType {
  item,
  newClaim,
  sentClaim,
  chat
}

// Global Navigator
final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "Main Navigator");

// Images
final noUserImage = Image.asset("assets/images/no-user.jpg");
final noItemImage = Image.asset("assets/images/no-item.png");
