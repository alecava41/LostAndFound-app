import 'package:flutter/material.dart';
import 'package:lost_and_found/app.dart';
import 'injection_container.dart' as di;

void main() async {
  await di.init();
  runApp(App());
}
