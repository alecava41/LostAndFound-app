import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/change_password.dart';
import 'package:lost_and_found/screens/claims.dart';
import 'package:lost_and_found/screens/home.dart';
import 'package:lost_and_found/screens/insert_item.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/login_page.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/registration_page.dart';
import 'package:lost_and_found/features/item/presentation/pages/notifications_page.dart'
    as notify;
import 'package:lost_and_found/features/claim/presentation/pages/claim_screen.dart' as claim;
import 'package:lost_and_found/screens/notifications.dart';

import '../core/presentation/home_controller/home_controller.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    /* FRA
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
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
    } */

    // ALE
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
        return MaterialPageRoute(builder: (_) => const notify.NotificationsScreen());
      case '/claims':
        return MaterialPageRoute(builder: (_) => const claim.ClaimsScreen());
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
