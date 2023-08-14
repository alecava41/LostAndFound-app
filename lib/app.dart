import 'dart:developer';

import 'package:device_preview/device_preview.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/config/route_generator.dart';
import 'package:lost_and_found/core/presentation/home_controller/bloc/home_controller_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/user/presentation/bloc/user/user_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';

import 'features/item/presentation/bloc/search/search_bloc.dart';
import 'injection_container.dart';

class App extends StatefulWidget {
  final String initialRoute;

  const App({super.key, required this.initialRoute});

  @override
  State<StatefulWidget> createState() => _Application();

  /*
   TODO need to add DB support for badges
      - notifications not read yet;
      - claims (received not read yet, sent w/ updated not read yet);
      - chat ??
      - badges on the bottom_bar
   TODO if app is in foreground, use badges (how?)
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
   TODO if app is in background (notification pop up):
    1 - check login status;
    2 - use 'topic' to create right navigation
        - check how to handle with BLoC and stuff
        - (firstly create home_controller, then navigate to wanted pages / subpages, need to include the specific info)
    3 - notification cases
        - someone has inserted new item which may interest you => go to the specific item page
            - (home => notifications => item page)
            - (fields) topic=items,id=itemId,newsId=newsId
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

  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
    await FirebaseMessaging.instance.getInitialMessage();

    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }

    // Also handle any interaction when the app is in the background via a
    // Stream listener
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);
  }

  void _handleMessage(RemoteMessage message) {
    log(message.toString());
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
