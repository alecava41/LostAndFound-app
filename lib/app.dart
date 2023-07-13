import 'package:flutter/material.dart';
import 'package:lost_and_found/config/route_generator.dart';
import 'package:lost_and_found/utils/colors.dart';

class App extends StatelessWidget {
  final String initialRoute;
  const App({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lost&Found',
      theme: ThemeData(
        primarySwatch: PersonalizedColor.primarySwatch,
      ),
      // Initially display FirstPage
      initialRoute: initialRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
