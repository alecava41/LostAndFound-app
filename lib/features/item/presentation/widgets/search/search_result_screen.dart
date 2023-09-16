import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/core/presentation/widgets/error_page.dart';
import 'package:lost_and_found/core/presentation/widgets/modal_sheet_option_button.dart';
import 'package:lost_and_found/core/presentation/widgets/no_content_page.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/custom_card_search.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

import '../../bloc/search/search_bloc.dart';
import '../../pages/filters_page.dart';
import 'custom_list_view.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (ctx, state) => Column(
        children: [
          Container(
            color: Theme.of(context).extension<CustomColors>()!.background2,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 10, 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => Navigator.push(ctx, MaterialPageRoute(builder: (_) => const FiltersScreen())),
                    child: Row(
                      children: [
                        Icon(
                          Icons.filter_list,
                          size: 25,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          AppLocalizations.of(context)!.filters,
                          style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
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
                                  state.order.getTranslatedName(context),
                                  textAlign: TextAlign.center,
                                  style: TextStyle(color: Theme.of(context).colorScheme.primary),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 0,
          ),
          state.hasSearchError
              ? ErrorPage(
                  hasBottomBar: true,
                  onRetry: () => ctx.read<SearchBloc>().add(const SearchEvent.searchSubmitted(false)),
                )
              : (state.isLoadingResults
                  ? const CustomCircularProgress(size: 100)
                  : state.results.isNotEmpty
                      ? Expanded(
                          child: CustomScrollableListView(
                            itemList: state.results
                                .map(
                                  (item) => CustomCardSearch(
                                    id: item.id,
                                    text: item.title,
                                    type: item.type.getTranslatedName(context),
                                    owner: item.user.username,
                                    token: state.token,
                                    date: item.date,
                                    distance: item.distance,
                                  ),
                                )
                                .toList(),
                          ),
                        )
                      : NoContentPage(
                          hasBottomBar: true,
                          image: "assets/images/no-search-result.png",
                          title: AppLocalizations.of(context)!.noContentSearchResultTitle,
                          subtitle: AppLocalizations.of(context)!.noContentSearchResultSubtitle,
                        )),
        ],
      ),
    );
  }

  void onOrderMenuButtonClick(BuildContext ctx, ResultOrder selectedOrder) {
    showModalBottomSheet<void>(
      backgroundColor: Theme.of(ctx).extension<CustomColors>()!.background2,
      context: ctx,
      builder: (BuildContext context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                AppLocalizations.of(context)!.selectSortingDialogTitle,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: ResultOrder.alphabeticAscending.getTranslatedName(context),
              isSelected: selectedOrder == ResultOrder.alphabeticAscending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.alphabeticAscending)),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: ResultOrder.alphabeticDescending.getTranslatedName(context),
              isSelected: selectedOrder == ResultOrder.alphabeticDescending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.alphabeticDescending)),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: ResultOrder.dateAscending.getTranslatedName(context),
              isSelected: selectedOrder == ResultOrder.dateAscending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.dateAscending)),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: ResultOrder.dateDescending.getTranslatedName(context),
              isSelected: selectedOrder == ResultOrder.dateDescending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.dateDescending)),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: ResultOrder.distanceAscending.getTranslatedName(context),
              isSelected: selectedOrder == ResultOrder.distanceAscending,
              onClick: () =>
                  ctx.read<SearchBloc>().add(const SearchEvent.sortParameterChanged(ResultOrder.distanceAscending)),
            ),
            const Divider(
              height: 0,
            ),
            ModalSheetOptionButton(
              text: ResultOrder.distanceDescending.getTranslatedName(context),
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
