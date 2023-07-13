import 'package:flutter/material.dart';
import 'package:lost_and_found/app.dart';
import 'package:lost_and_found/features/authentication/domain/usecases/login_usecase.dart';
import 'injection_container.dart' as di;
import 'injection_container.dart';

void main() async {
  await di.init();

  String initialRoute = "/login";
  final response = await sl<LoginUseCase>()(null);
  response.fold(
          (failure) => initialRoute = "/login",
          (success) => initialRoute = "/"
  );

  runApp(App(initialRoute: initialRoute));
}
