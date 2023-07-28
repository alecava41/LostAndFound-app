import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/found_items_container.dart';

import 'clickable_circular_button.dart';
import 'lost_items_container.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (ctx, state) {
        return RefreshIndicator(
            onRefresh: () async {
              Future block = ctx.read<HomeBloc>().stream.first;
              ctx.read<HomeBloc>().add(const HomeEvent.homeRefreshed());
              await block;
            },
            // TODO handle error messages from the server with listener
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
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('/notifications'),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            ClickableCircularButton(
                              icon: Icons.search,
                              onPressed: () {
                                // TODO navigate to "claims" screen
                              },
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