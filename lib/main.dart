import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/app.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/login_usecase.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();

  String initialRoute = "/login";

  final response = await sl<LoginUseCase>()(null);
  response.fold(
          (failure) => initialRoute = "/login",
          (success) => initialRoute = "/"
  );

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => App(initialRoute: initialRoute),
    ),
  );
}
