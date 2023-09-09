import 'dart:async';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lost_and_found/config/route_generator.dart';
import 'package:lost_and_found/core/presentation/app_global/bloc/app_global_bloc.dart';
import 'package:lost_and_found/core/presentation/home_controller/bloc/home_controller_bloc.dart';
import 'package:lost_and_found/features/chat/presentation/pages/chat_page.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_claim_screen.dart';
import 'package:lost_and_found/features/claim/presentation/pages/claims_screen.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/features/item/presentation/pages/notifications_page.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';
import 'package:sizer/sizer.dart';

import 'features/badges/presentation/bloc/badge_bloc.dart';
import 'features/chat/presentation/bloc/inbox/inbox_bloc.dart';
import 'features/item/presentation/bloc/home/home_bloc.dart';
import 'features/item/presentation/bloc/search/search_bloc.dart';
import 'features/user/presentation/bloc/user/user_bloc.dart';
import 'injection_container.dart';

class App extends StatefulWidget {
  final String initialRoute;

  const App({super.key, required this.initialRoute});

  @override
  State<StatefulWidget> createState() => _Application();

// TODO (@alecava41) translation (notifications + server) + do stuff for iOS
// TODO (@alecava41) dark theme + switch
// TODO (@alecava41) (map) fix this on iOS (https://pub.dev/packages/map_launcher#for-ios-add-url-schemes-in-infoplist-file)

// TODO (@alecava41) should state somewhere to range of the search for the specified position

// TODO (@alecava41) modify tutorial in options to avoid "double" horizontal scroll
// TODO (@alecava41) remove third minion from home_tutorial image
}

class _Application extends State<App> {
  late String initialRoute = widget.initialRoute;
  RemoteMessage? remoteMessage;

  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from a terminated state.
    RemoteMessage? initialMessage = await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    final topic = message.data['topic'] == 'item'
        ? NotificationType.item
        : (message.data['topic'] == 'newClaim'
            ? NotificationType.newClaim
            : (message.data['topic'] == 'sentClaim' ? NotificationType.sentClaim : NotificationType.chat));

    switch (topic) {
      case NotificationType.item:
        _handleItemMessage(int.parse(message.data['news']), int.parse(message.data['item']));
      case NotificationType.newClaim:
        _handleNewClaimMessage(int.parse(message.data['claim']), int.parse(message.data['item']));
      case NotificationType.sentClaim:
        _handleSentClaimUpdateMessage(int.parse(message.data['item']));
      case NotificationType.chat:
        _handleChatMessage(int.parse(message.data["item"]), message.data["room"]);
    }
  }

  void _handleItemMessage(int newsId, int itemId) {
    navigatorKey.currentState?.pushNamed(
      '/notifications',
      arguments: NotificationsScreenArguments(newNewsId: newsId),
    );
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => ItemScreen(itemId: itemId),
      ),
    );
  }

  void _handleNewClaimMessage(int claimId, int itemId) {
    navigatorKey.currentState?.pushNamed('/claims', arguments: ClaimsScreenArguments(claimId: claimId, tab: null));
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => AnswerClaimScreen(
          itemId: itemId,
          claimId: claimId,
          isClaimAlreadyManaged: false,
        ),
      ),
    );
  }

  void _handleSentClaimUpdateMessage(int itemId) {
    navigatorKey.currentState?.pushNamed('/claims', arguments: const ClaimsScreenArguments(claimId: null, tab: 0));
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => ItemScreen(itemId: itemId),
      ),
    );
  }

  void _handleChatMessage(int itemId, String roomId) {
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (_) => ChatScreen(itemId: itemId, roomId: roomId),
      ),
    );
    navigatorKey.currentContext?.read<HomeControllerBloc>().add(const HomeControllerEvent.tabChanged(3));
  }

  @override
  void initState() {
    super.initState();
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppGlobalBloc>(create: (_) => sl<AppGlobalBloc>()..add(const AppGlobalEvent.appCreated())),
        BlocProvider<HomeBloc>(create: (_) => sl<HomeBloc>()),
        BlocProvider<SearchBloc>(create: (_) => sl<SearchBloc>()),
        BlocProvider<UserBloc>(create: (_) => sl<UserBloc>()),
        BlocProvider<HomeControllerBloc>(create: (_) => sl<HomeControllerBloc>()),
        BlocProvider<BadgeBloc>(create: (_) => sl<BadgeBloc>()),
        BlocProvider<InboxBloc>(create: (_) => sl<InboxBloc>())
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          if (initialRoute == "/") {
            context.read<HomeBloc>().add(const HomeEvent.homeCreated());
            context.read<BadgeBloc>().add(const BadgeEvent.badgeCreated());
          }

          return BlocBuilder<AppGlobalBloc, AppGlobalState>(
            builder: (ctx, state) => MaterialApp(
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              locale: state.locale,
              builder: DevicePreview.appBuilder,
              title: 'Lost and Found',
              navigatorKey: navigatorKey,
              theme: ThemeData(
                fontFamily: GoogleFonts.roboto().fontFamily,
                primarySwatch: PersonalizedColor.primarySwatch,
              ),
              initialRoute: initialRoute,
              onGenerateRoute: RouteGenerator.generateRoute,
            ),
          );
        },
      ),
    );
  }
}
