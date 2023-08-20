import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/custom_card_search.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../../bloc/search/search_bloc.dart';
import 'custom_list_view.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  OrdinationType orderResultsOption = OrdinationType.alphabeticalAZ;

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
                    onPressed: () => ctx
                        .read<SearchBloc>()
                        .add(const SearchEvent.showFilters()),
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
                        onPressed: () => onOrderMenuButtonClick(context),
                        child: Row(
                          
                          children: [
                            const Icon(Icons.list),
                            const SizedBox(width: 2,),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(OrderUtils.getOrderLabel(
                                      orderResultsOption), textAlign: TextAlign.center,),
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
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          state.results.isNotEmpty
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
                            token: state.token),
                      )
                      .toList(),
                ))
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
                ),
        ],
      ),
    );
  }

  void onOrderMenuButtonClick(BuildContext context) {
    showModalBottomSheet<void>(
      
      context: context,
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
              text: OrderUtils.getOrderLabel(OrdinationType.alphabeticalAZ),
              isSelected: orderResultsOption == OrdinationType.alphabeticalAZ
                  ? true
                  : false,
              onClick: () => setState(() {
                orderResultsOption = OrdinationType.alphabeticalAZ;
              }),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: OrderUtils.getOrderLabel(OrdinationType.alphabeticalZA),
              isSelected: orderResultsOption == OrdinationType.alphabeticalZA
                  ? true
                  : false,
              onClick: () => setState(() {
                orderResultsOption = OrdinationType.alphabeticalZA;
              }),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: OrderUtils.getOrderLabel(OrdinationType.dateAscending),
              isSelected: orderResultsOption == OrdinationType.dateAscending
                  ? true
                  : false,
              onClick: () => setState(() {
                orderResultsOption = OrdinationType.dateAscending;
              }),
            ),
            const Divider(
              height: 0,
            ),
            OrderOptionButton(
              text: OrderUtils.getOrderLabel(OrdinationType.dateDescending),
              isSelected: orderResultsOption == OrdinationType.dateDescending
                  ? true
                  : false,
              onClick: () {
                setState(() {
                  orderResultsOption = OrdinationType.dateDescending;
                });
              },
            ),
            const Divider(height: 0,),
            OrderOptionButton(
              text: OrderUtils.getOrderLabel(OrdinationType.distanceAscending),
              isSelected: orderResultsOption == OrdinationType.distanceAscending
                  ? true
                  : false,
              onClick: () {
                setState(() {
                  orderResultsOption = OrdinationType.distanceAscending;
                });
              },
            ),
            const Divider(height: 0,),
            OrderOptionButton(
              text: OrderUtils.getOrderLabel(OrdinationType.distanceDescending),
              isSelected: orderResultsOption == OrdinationType.distanceDescending
                  ? true
                  : false,
              onClick: () {
                setState(() {
                  orderResultsOption = OrdinationType.distanceDescending;
                });
              },
            ),
            const SizedBox(height: 5,)
          ],
        );
      },
    );
  }
}

class OrderOptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onClick;

  const OrderOptionButton(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isSelected
          ? PersonalizedColor.claimAcceptedStatusColor
          : Colors.transparent,
      child: InkWell(
        onTap: () {
          onClick();
          Navigator.pop(context);
        },
        splashColor: Colors.grey.shade200,
        child: Container(
          padding: const EdgeInsets.all(14),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          child: Text(
            text,
            style:  TextStyle(fontSize: 20, color: Colors.black.withOpacity(0.6)),
          ),
        ),
      ),
    );
  }
}

enum OrdinationType {
  alphabeticalAZ,
  alphabeticalZA,
  dateAscending,
  dateDescending,
  distanceAscending,
  distanceDescending
}

class OrderUtils {
  static String getOrderLabel(OrdinationType ordinationType) {
    switch (ordinationType) {
      case OrdinationType.alphabeticalAZ:
        return 'Alphabetic from A to Z';
      case OrdinationType.alphabeticalZA:
        return 'Alphabetic from Z to A';
      case OrdinationType.dateAscending:
        return 'Ascending for date of insertion';
      case OrdinationType.dateDescending:
        return 'Descending for date of insertion';
      case OrdinationType.distanceAscending:
        return 'Ascending for distance';
      case OrdinationType.distanceDescending:
        return 'Descending for distance';
      default:
        return '';
    }
  }
}
