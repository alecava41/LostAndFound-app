import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

import '../../../../injection_container.dart';
import '../widgets/notifications/news_content.dart';

class NotificationsScreen extends StatelessWidget {
  final int? newNewsId;

  const NotificationsScreen({super.key, this.newNewsId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
        elevation: 0,
        surfaceTintColor: Theme.of(context).colorScheme.outline,
        shadowColor: Theme.of(context).colorScheme.outline,
        title: Text(
          AppLocalizations.of(context)!.newsPageTitle,
          style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
        ),
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (_) => sl<NewsBloc>()..add(NewsEvent.newsCreated(newNewsId)),
          child: NewsContent(newNewsId: newNewsId),
        ),
      ),
    );
  }
}

class NotificationsScreenArguments {
  final int newNewsId;

  const NotificationsScreenArguments({required this.newNewsId});
}
