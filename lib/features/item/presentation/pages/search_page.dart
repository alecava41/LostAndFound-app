import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/search_option_screen.dart';

import '../widgets/search/search_result_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (ctx, state) {
        switch (state.pageState) {
          case SearchPageState.loadingPage:
            return const CustomCircularProgress(size: 100);
          case SearchPageState.resultPage:
            return const SearchResultScreen();
          case SearchPageState.filterPage:
            return const SearchOptionScreen();
        }
      },
    );
  }
}
