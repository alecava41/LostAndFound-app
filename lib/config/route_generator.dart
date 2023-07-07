import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/home.dart';
import 'package:lost_and_found/screens/inbox.dart';
import 'package:lost_and_found/screens/insert_item.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/register.dart';
import 'package:lost_and_found/screens/login.dart';


class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final _ = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => HomeScreen()); // TODO: just for testing
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/inbox':
        return MaterialPageRoute(builder: (_) => const InboxScreen());
      case '/insert':
        return MaterialPageRoute(builder: (_) => const InsertItemScreen());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
