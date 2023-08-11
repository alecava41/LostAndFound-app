import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/custom_card_search.dart';

import '../../bloc/search/search_bloc.dart';
import 'custom_dropdown_button_form_field.dart';
import 'custom_list_view.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  // TODO add ascending/descending ordering button

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (ctx, state) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.white,
            height: 70,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () => ctx.read<SearchBloc>().add(const SearchEvent.showFilters()),
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
                SizedBox(
                  width: 150,
                  height: 60,
                  child: CustomDropdownFormField(
                    items: const [
                      DropdownMenuItem(
                          value: 'opt1',
                          child: Text(
                            'Alphabetic',
                          )),
                      DropdownMenuItem(value: 'opt2', child: Text('Date')),
                      DropdownMenuItem(value: 'opt3', child: Text('Distance')),
                    ],
                    value: state.order.name,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        final order = newValue == "Alphabetic"
                            ? ResultOrder.alphabetic
                            : (newValue == "Distance" ? ResultOrder.date : ResultOrder.distance);
                        ctx.read<SearchBloc>().add(SearchEvent.sortParameterChanged(order));
                      }
                    },
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
}
