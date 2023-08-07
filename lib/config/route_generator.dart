import 'package:flutter/material.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/login_page.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/registration_page.dart';
import 'package:lost_and_found/features/item/presentation/pages/notifications_page.dart';
import 'package:lost_and_found/features/claim/presentation/pages/claim_screen.dart';
import 'package:lost_and_found/features/item/presentation/pages/insert_item_page.dart';

import '../core/presentation/home_controller/home_controller.dart';
import '../features/user/presentation/pages/change_password_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeControllerScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/insert':
        return MaterialPageRoute(builder: (_) => InsertItemScreen());
      case '/notifications':
        return MaterialPageRoute(builder: (_) => const NotificationsScreen());
      case '/claims':
        return MaterialPageRoute(builder: (_) => const ClaimsScreen());
      case '/options/changePassword':
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      default:
        // If there is no such named route in the switch statement
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
