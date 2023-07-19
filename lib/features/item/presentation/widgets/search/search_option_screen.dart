import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';

import '../../../../../core/presentation/select_category/select_category_form.dart';
import '../../../../../core/presentation/widgets/check_boxes_form.dart';
import '../../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../../core/presentation/widgets/select_date_form.dart';
import '../../../../../core/presentation/widgets/select_position_button.dart';
import '../../../../../utils/colors.dart';

class SearchOptionScreen extends StatelessWidget {


  const SearchOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
        builder: (ctx, state) => SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 25, 20, 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Search filters",
                          style: TextStyle(fontSize: 40),
                        ),
                        ElevatedButton(
                          onPressed: () => ctx.read<SearchBloc>().add(const SearchEvent.resetFilters()),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: PersonalizedColor.mainColor,
                            shape: const StadiumBorder(),
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                          ),
                          child: const Text(
                            "DELETE ALL", // TODO maybe "reset"?
                          ),
                        ),
                      ],
                    ),
                  ),
                  PersonalizedCheckBoxesForm(
                    foundChecked: state.foundChecked,
                    lostChecked: state.lostChecked,
                    onFoundCheckedChanged: (_) => ctx.read<SearchBloc>().add(const SearchEvent.foundCheckTriggered()),
                    onLostCheckedChanged: (_) => ctx.read<SearchBloc>().add(const SearchEvent.lostCheckTriggered()),
                  ),
                  const SizedBox(height: 40),
                  SelectPositionButton(
                    address: state.address,
                    onPositionSelected: (LatLng? pos) {
                      if (pos != null) {
                        ctx.read<SearchBloc>().add(SearchEvent.positionSelected(LatLng(pos.latitude, pos.longitude)));
                      }
                    },
                  ),
                  const SizedBox(height: 40),
                  CategorySelectionForm(
                      onTap: (value) =>
                          {ctx.read<SearchBloc>().add(SearchEvent.categorySelected(value.first, value.second))},
                      category: state.category),
                  const SizedBox(height: 40),
                  DateSelectionForm(
                    date: state.dateTime,
                    onTap: (value) => ctx.read<SearchBloc>().add(SearchEvent.dateSelected(value)),
                  ),
                  const SizedBox(height: 40),
                  PersonalizedLargeGreenButton(
                    onPressed: () => ctx.read<SearchBloc>().add(const SearchEvent.searchSubmitted()),
                    text: const Text("Show result", style: TextStyle(fontSize: 20, color: Colors.white)),
                  )
                ],
              ),
            ));
  }
}
