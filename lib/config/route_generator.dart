import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/home.dart';
import 'package:lost_and_found/screens/inbox.dart';
import 'package:lost_and_found/screens/insert_item.dart';
import 'package:lost_and_found/screens/login.dart';
import 'package:lost_and_found/screens/register.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => InsertItemScreen());
      case '/register':
        return MaterialPageRoute(
          builder: (_) => RegisterScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/inbox':
        return MaterialPageRoute(builder: (_) => InboxScreen());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
