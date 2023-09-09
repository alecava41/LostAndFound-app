import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/utility.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs
// Base URL of back-end server
const String baseUrl = "http://16.16.64.106:5000";

// Default Position - Center of the current locale
// TODO not working
final defaultPosition = getCenterPositionBasedOnLocale();

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
