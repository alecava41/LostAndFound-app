import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/tutorial/pages/tutorial_page.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/login_page.dart';
import 'package:lost_and_found/features/authentication/presentation/pages/registration_page.dart';
import 'package:lost_and_found/features/item/presentation/pages/notifications_page.dart';
import 'package:lost_and_found/features/claim/presentation/pages/claims_screen.dart';
import 'package:lost_and_found/features/item/presentation/pages/insert_item_page.dart';
import 'package:lost_and_found/features/user/presentation/pages/tutorial_page.dart';

import '../core/presentation/home_controller/pages/home_controller_page.dart';
import '../features/user/presentation/pages/change_password_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/tutorial':
        return MaterialPageRoute(builder: (_) => const InfoScreen());
      case '/':
        return MaterialPageRoute(builder: (builder) => HomeControllerScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/insert':
        return MaterialPageRoute(builder: (_) {
          bool isNewItemLost = true;

          if (settings.arguments != null) {
            isNewItemLost = (settings.arguments as InsertItemScreenArguments).isNewItemLost;
          }

          return InsertItemScreen(isNewItemLost: isNewItemLost);
        });
      case '/notifications':
        return MaterialPageRoute(
          builder: (_) {
            int? newNewsId;

            if (settings.arguments != null) {
              newNewsId = (settings.arguments as NotificationsScreenArguments).newNewsId;
            }

            return NotificationsScreen(newNewsId: newNewsId);
          },
        );
      case '/claims':
        return MaterialPageRoute(
          builder: (_) {
            int? tab;
            int? newClaimId;

            if (settings.arguments != null) {
              tab = (settings.arguments as ClaimsScreenArguments).tab;
              newClaimId = (settings.arguments as ClaimsScreenArguments).claimId;
            }

            return ClaimsScreen(newClaimId: newClaimId, tab: tab);
          },
        );
      case '/options/changePassword':
        return MaterialPageRoute(builder: (_) => const ChangePasswordScreen());
      case '/options/tutorial':
        return MaterialPageRoute(builder: (_) {
          int? tab;

          if (settings.arguments != null) {
            tab = (settings.arguments as TutorialScreenArguments).tab;
          }

          return TutorialScreen(tab: tab);
        });
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
