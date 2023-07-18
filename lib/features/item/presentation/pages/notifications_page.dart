import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/notification/news_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../../../injection_container.dart';
import '../widgets/notifications/news_content.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          title: const Text(
            "Notifications",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: BlocProvider(
          create: (_) => sl<NewsBloc>()..add(const NewsEvent.newsCreated()),
          child: const NewsContent(),
        ));
  }
}
