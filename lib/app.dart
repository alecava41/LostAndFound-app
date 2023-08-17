import 'package:device_preview/device_preview.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/config/route_generator.dart';
import 'package:lost_and_found/core/presentation/home_controller/bloc/home_controller_bloc.dart';
import 'package:lost_and_found/features/claim/presentation/pages/answer_claim_screen.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/item_page.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/constants.dart';

import 'features/item/presentation/bloc/search/search_bloc.dart';
import 'injection_container.dart';

class App extends StatefulWidget {
  final String initialRoute;

  const App({super.key, required this.initialRoute});

  @override
  State<StatefulWidget> createState() => _Application();

/*
   TODO (@alecava41) need to add DB support for badges
      - notifications not read yet;
      - claims (received not read yet, sent w/ updated not read yet);
      - chat ??
      - badges on the bottom_bar

   TODO (@alecava41) if app is in foreground, use badges (how?)
      - notification cases
        - someone has inserted new item which may interest you
            - update badge number for notifications
            - mark home_bottom_bar with badge (+ animation)
        - someone claimed one of your found items
            - update badge number for total claims (received + sent)
            - update badge number for received claims
            - mark home_bottom_bar with badge (+ animation)
        - someone has updated a claim opened by yourself
            - update badge number for total claims (received + sent)
            - update badge number for sent claims
            - mark home_bottom_bar with badge (+ animation)
        - chat ??
   */

/*
   TODO (@alecava41) if app is in background (notification pop up):
    1 - check login status;
    2 - use 'topic' to create right navigation
        - check how to handle with BLoC and stuff
        - (firstly create home_controller, then navigate to wanted pages / subpages, need to include the specific info)
    3 - notification cases
        - someone claimed one of your found items => go to answer claim page
            - (home => claims => received_claim => answer_claim_page)
            - (fields) topic=newClaim,id=claimId
        - someone has updated a claim opened by yourself
            - (home => claims => sent_claim => question_claim_page)
            - (fields) topic=sentClaims,id=claimId
        - chat ??
   */
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
      case NotificationType.chat:
    }
  }

  void _handleItemMessage(int newsId, int itemId) {
    navigatorKey.currentState?.pushNamed('/notifications');
    // TODO it would be better to trigger BLoC event to mark news as read
    navigatorKey.currentState?.push(MaterialPageRoute(builder: (_) => ItemScreen(itemId: itemId)));
  }

  void _handleNewClaimMessage(int claimId, int itemId) {
    navigatorKey.currentState?.pushNamed('/claims');
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

  @override
  void initState() {
    super.initState();
    setupInteractedMessage();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeBloc>(create: (_) => sl<HomeBloc>()..add(const HomeEvent.homeCreated())),
        BlocProvider<SearchBloc>(create: (_) => sl<SearchBloc>()),
        BlocProvider<UserBloc>(create: (_) => sl<UserBloc>()..add(const UserEvent.contentCreated())),
        BlocProvider<HomeControllerBloc>(create: (_) => sl<HomeControllerBloc>())
      ],
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        title: 'Lost&Found',
        navigatorKey: navigatorKey,
        theme: ThemeData(
          primarySwatch: PersonalizedColor.primarySwatch,
        ),
        // Initially display FirstPage
        initialRoute: initialRoute,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
