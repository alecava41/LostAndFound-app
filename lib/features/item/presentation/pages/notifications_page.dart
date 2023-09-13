import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../injection_container.dart';
import '../widgets/notifications/news_content.dart';

class NotificationsScreen extends StatelessWidget {
  final int? newNewsId;

  const NotificationsScreen({super.key, this.newNewsId});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: PersonalizedColor.backgroundColor,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.newsPageTitle,
              style: const TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: BlocProvider(
            create: (_) => sl<NewsBloc>()..add(NewsEvent.newsCreated(newNewsId)),
            child: NewsContent(newNewsId: newNewsId),
          ),
        ),
      ),
    );
  }
}

class NotificationsScreenArguments {
  final int newNewsId;

  const NotificationsScreenArguments({required this.newNewsId});
}
