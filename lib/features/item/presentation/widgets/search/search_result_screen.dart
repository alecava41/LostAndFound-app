import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/custom_card_search.dart';

import '../../bloc/search/search_bloc.dart';
import '../../pages/filters_page.dart';
import 'custom_list_view.dart';
import 'order_option_button.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (ctx, state) => Column(
        children: [
          Container(
            color: Colors.white,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 10, 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => const FiltersScreen())),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.filter_list,
                          size: 25,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Filters',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
                    child: TextButton(
                        onPressed: () => onOrderMenuButtonClick(context, state.order),
                        child: Row(
                          children: [
                            const Icon(Icons.list),
                            const SizedBox(
                              width: 2,
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    state.order.name,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 0,
          ),
          state.hasSearchError
              ? ErrorPage(onRetry: () => ctx.read<SearchBloc>().add(const SearchEvent.searchSubmitted()))
              : (state.isLoadingResults
                  ? const CustomCircularProgress(size: 100)
                  : state.results.isNotEmpty
                      ? Expanded(
                          child: CustomScrollableListView(
                            itemList: state.results
                                .map(
                                  (item) => CustomCardSearch(
                                    id: item.id,
                                    hasImage: item.hasImage,
                                    text: item.title,
                                    type: item.type.name,
                                    owner: item.user.username,
                                    token: state.token,
                                    date: item.date,
                                    distance: item.distance,
                                  ),
                                )
                                .toList(),
                          ),
                        )
                      : const Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.search_off_rounded,
                                size: 80,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "No matching items found with your parameters. Try with more general ones.",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        )),
        ],
      ),
    );
  }

  void onOrderMenuButtonClick(BuildContext ctx, ResultOrder selectedOrder) {
    showModalBottomSheet<void>(
      context: ctx,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Select a sorting method.',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: ResultOrder.alphabeticAscending.name,
              isSelected: selectedOrder == ResultOrder.alphabeticAscending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.alphabeticAscending)),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: ResultOrder.alphabeticDescending.name,
              isSelected: selectedOrder == ResultOrder.alphabeticDescending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.alphabeticDescending)),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: ResultOrder.dateAscending.name,
              isSelected: selectedOrder == ResultOrder.dateAscending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.dateAscending)),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: ResultOrder.dateDescending.name,
              isSelected: selectedOrder == ResultOrder.dateDescending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.dateDescending)),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: ResultOrder.distanceAscending.name,
              isSelected: selectedOrder == ResultOrder.distanceAscending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.distanceAscending)),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: ResultOrder.distanceDescending.name,
              isSelected: selectedOrder == ResultOrder.distanceDescending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.distanceDescending)),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        );
      },
    );
  }
}
