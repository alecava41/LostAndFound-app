import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';


// flutter pub run build_runner watch --delete-conflicting-outputs NON CANCELLARE!!!!
const String baseUrl = "http://192.168.178.41:5000";

const defaultPosition = LatLng(43.102107520506756, 12.349117446797067);

enum NotificationType {
  item,
  newClaim,
  sentClaim,
  chat
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey(debugLabel: "Main Navigator");
