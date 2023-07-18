import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/home_controller/home_controller_bottom_nav.dart';

import '../../../injection_container.dart';
import 'bloc/home_controller_bloc.dart';

class HomeControllerScreen extends StatelessWidget {
  const HomeControllerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeControllerBloc>(),
      child: const HomeControllerBottomNav()
    );
  }

}