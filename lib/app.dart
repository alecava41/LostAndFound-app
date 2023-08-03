import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/config/route_generator.dart';
import 'package:lost_and_found/core/presentation/home_controller/bloc/home_controller_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/utils/colors.dart';

import 'features/item/presentation/bloc/search/search_bloc.dart';
import 'injection_container.dart';

class App extends StatelessWidget {
  final String initialRoute;

  const App({super.key, required this.initialRoute});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<HomeBloc>(create: (_) => sl<HomeBloc>()),
          BlocProvider<SearchBloc>(create: (_) => sl<SearchBloc>()),
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
        ));
  }
}
