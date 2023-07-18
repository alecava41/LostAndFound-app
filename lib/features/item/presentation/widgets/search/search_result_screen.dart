import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/search/custom_card_search.dart';

import '../../bloc/search/search_bloc.dart';
import 'custom_list_view.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({super.key});

  // TODO add missing app bar

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
        builder: (ctx, state) => Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        // Button functionality
                      },
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
                            'Filter',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
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
                            .map((item) =>
                            CustomCardSearch(
                                id: item.id,
                                text: item.title,
                                type: item.type.name,
                                owner: item.user.username,
                                token: state.token)
                        ).toList(),
                      ))
                    : const Center(
                        child: Text(
                          "There are no matching items based on your parameters.",
                          style: TextStyle(fontSize: 20),
                        ),
                      )
              ],
            ));
  }
}

/*
    return BlocBuilder<SearchBloc, SearchState>(
        builder: (ctx, state) => SafeArea(
            top: false,
            child: Scaffold(
                backgroundColor: PersonalizedColor.backGroundColor,
                appBar: AppBar(
                  iconTheme: const IconThemeData(color: Colors.black),
                  backgroundColor: Colors.white,
                ),
                body: lostItems.isNotEmpty
                    ? Column(
                        children: [
                          Container(
                            color: Colors.white,
                            //width: MediaQuery.of(context).size.width,
                            height: 70,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                ),
                                onPressed: () {
                                  // Button functionality
                                },
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
                                      'Filter',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 1,
                            height: 0,
                          ),
                          Expanded(
                              child: CustomScrollableListView(
                            itemList: lostItems,
                          ))
                        ],
                      )
                    : const Center(
                        child: Text(
                          "There are no matching items based on your parameters.",
                          style: TextStyle(fontSize: 20),
                        ),
                      ))));
 */
