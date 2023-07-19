import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/search_option_screen.dart';

import '../widgets/search/search_result_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (ctx, state) {
        if (state.searchFailureOrSuccess != null) {
          state.searchFailureOrSuccess!.fold(
              (failure) => {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        padding: const EdgeInsets.all(30),
                        backgroundColor: Colors.red, // TODO: see if color is good even in dark mode
                        content: Text(
                            failure.maybeWhen<String>(
                                genericFailure: () => 'Server error. Please try again later.',
                                networkFailure: () => 'No internet connection available. Check your internet connection.',
                                validationFailure: (reason) => reason!,
                                orElse: () => 'Unknown error'),
                            style: const TextStyle(fontSize: 20)),
                      ),
                    )
                  },
              (success) => {});
        }
      },
      builder: (ctx, state) {
        switch (state.pageState) {
          case SearchPageState.loadingPage:
            return const Center(
                child: CircularProgressIndicator(
              value: null,
            )); // TODO: modify
          case SearchPageState.resultPage:
            return const SearchResultScreen();
          case SearchPageState.filterPage:
            return const SearchOptionScreen();
        }
      },
    );
  }
}
