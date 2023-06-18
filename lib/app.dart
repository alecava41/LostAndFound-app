import 'package:flutter/material.dart';
import 'package:lost_and_found/config/route_generator.dart';
import 'package:lost_and_found/utils/colors.dart';
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: PersonalizedColor.primarySwatch,
      ),
      // Initially display FirstPage
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}