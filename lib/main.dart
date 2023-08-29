import 'package:device_preview/device_preview.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/app.dart';
import 'package:lost_and_found/core/domain/usecases/usecase.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/login_usecase.dart';
import 'package:lost_and_found/features/chat/domain/usecases/login_chat_usecase.dart';
import 'firebase_options.dart';
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await init();

  // Firebase initialization
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await FirebaseMessaging.instance.setAutoInitEnabled(true);

  String initialRoute = "/tutorial";

  final response = await sl<LoginUseCase>()(null);
  await sl<LoginChatUseCase>()(NoParams());

  response.fold((_) => null, (success) {
    initialRoute = "/";
  });

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => App(initialRoute: initialRoute),
    ),
  );
}
