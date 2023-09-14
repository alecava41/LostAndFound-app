import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.newsPageTitle,
              style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
            ),
            backgroundColor: Theme.of(context).extension<CustomColors>()!.statusBarDefaultColor,
            iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
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
