import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';

import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../core/presentation/widgets/check_boxes_form.dart';
import '../../../../core/presentation/widgets/select_position_button.dart';
import '../../../../utils/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
        listener: (ctx, state) {},
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
                          "Search",
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
                            "DELETE ALL",
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
                   // CategorySelectionForm(onTap: (value) => {}, selectedCategory: category),
                  const SizedBox(height: 40),
                  // DataSelectionForm(
                  //   labelText: "Date",
                  //   subLabelText: "e.g. date of upload",
                  //   selectedData: date != null ? "${Utility.getMonth(date!.month)} ${date!.year}" : "",
                  //   onTap: (value) => onDataPicked(value),
                  //   startingDate: date,
                  // ),
                  const SizedBox(height: 40),
                  PersonalizedLargeGreenButton(
                    onPressed: () => {print("Results")},
                    text: const Text("Show result", style: TextStyle(fontSize: 20, color: Colors.white)),
                  )
                ],
              ),
            ));
  }
}
