import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';

import '../widgets/home/clickable_circular_button.dart';
import '../widgets/home/found_items_container.dart';
import '../widgets/home/lost_items_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // TODO add tooltip on icons

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (ctx, state) {
        final loadFailureOrSuccess = state.homeFailureOrSuccess;

        if (loadFailureOrSuccess != null) {
          loadFailureOrSuccess.fold((failure) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              padding: const EdgeInsets.all(30),
              backgroundColor: Colors.red,
              content: Text(
                  failure.maybeWhen<String>(
                      genericFailure: () => 'Server error. Please try again later.',
                      networkFailure: () => 'No internet connection available. Check your internet connection.',
                      orElse: () => "Unknown error"),
                  style: const TextStyle(fontSize: 20)),
            ));
          }, (_) {});
        }
      },
      builder: (ctx, state) {
        if (state.isLoading) {
          return const CustomCircularProgress(size: 100);
        }

        if (state.homeFailureOrSuccess != null && state.homeFailureOrSuccess!.isLeft()) {
          // TODO: need to handle error on loading (@backToFrancesco)
          return const Text("Create screen");
        }

        return RefreshIndicator(
            onRefresh: () async {
              Future block = ctx.read<HomeBloc>().stream.first;
              ctx.read<HomeBloc>().add(const HomeEvent.homeRefreshed());
              await block;
            },
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Home",
                          style: TextStyle(fontSize: 40),
                        ),
                        Row(
                          children: [
                            ClickableCircularButton(
                              icon: Icons.notifications,
                              onPressed: () => Navigator.of(context).pushNamed('/notifications'),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            ClickableCircularButton(
                              icon: Icons.connect_without_contact,
                              onPressed: () => Navigator.of(context).pushNamed('/claims'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const LostItemsContainer(),
                  const FoundItemsContainer(),
                ],
              ),
            ));
      },
    );
  }
}
