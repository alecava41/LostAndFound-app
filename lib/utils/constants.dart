import 'package:flutter/material.dart';

// flutter pub run build_runner watch --delete-conflicting-outputs
// Base URL of back-end server
const String baseUrl = "http://13.53.123.54:5000";

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
const noUserImagePath = "assets/images/no-user.jpg";
const noItemImagePath = "assets/images/no-item.png";
