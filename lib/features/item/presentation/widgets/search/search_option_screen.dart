import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/select_category/widgets/select_category_form.dart';
import '../../../../../core/presentation/widgets/check_boxes_form.dart';
import '../../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../../core/presentation/widgets/select_date_form.dart';
import '../../../../../core/presentation/widgets/select_position_button.dart';
import '../../../../../utils/colors.dart';

class SearchOptionScreen extends StatelessWidget {
  final bool hasPerformedFirstSearch;

  const SearchOptionScreen({super.key, required this.hasPerformedFirstSearch});

  /* TODO (@alecava41) create completely new filter page
      - != bloc, pass current search state
      - on create pass current search params to new bloc
      - on back_button_pressed do nothing, show results
      - on search_button_pressed, pass new params and perform search
   */

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (ctx, state) {
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 20, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      hasPerformedFirstSearch
                          ? IconButton(
                              onPressed: () => ctx
                                  .read<SearchBloc>()
                                  .add(const SearchEvent.searchPageChanged(SearchPageState.resultPage)),
                              // TODO (@alecava41) replace with something better!
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 40,
                              ),
                            )
                          : Container(),
                      hasPerformedFirstSearch
                          ? const SizedBox(
                              width: 5,
                            )
                          : Container(),
                      const Text(
                        "Filters",
                        style: TextStyle(fontSize: 40),
                      ),
                    ],
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
              foundChecked: state.itemsToSearch.value.getOrElse(() => const Pair(false, false)).first,
              lostChecked: state.itemsToSearch.value.getOrElse(() => const Pair(false, false)).second,
              showError: state.showError,
              onFoundCheckedChanged: (_) => ctx.read<SearchBloc>().add(const SearchEvent.foundCheckTriggered()),
              onLostCheckedChanged: (_) => ctx.read<SearchBloc>().add(const SearchEvent.lostCheckTriggered()),
              errorText: state.itemsToSearch.value.fold(
                  (failure) => failure.maybeWhen(validationFailure: (reason) => reason!, orElse: () => ""), (_) => ""),
            ),
            const SizedBox(height: 40),
            SelectPositionButton(
              isLoadingAddress: state.isLoadingPosition,
              address: state.address,
              onPositionSelected: (LatLng? pos) {
                if (pos != null) {
                  ctx.read<SearchBloc>().add(SearchEvent.positionSelected(LatLng(pos.latitude, pos.longitude)));
                }
              },
              startingPosition: state.pos.value.getOrElse(() => defaultPosition),
              showError: state.showError,
              errorText: state.pos.value.fold(
                  (failure) => failure.maybeWhen(validationFailure: (reason) => reason!, orElse: () => ""), (_) => ""),
            ),
            const SizedBox(height: 40),
            CategorySelectionForm(
              onTap: (value) => ctx.read<SearchBloc>().add(SearchEvent.categorySelected(value.first, value.second)),
              category: state.category,
              showError: state.showError,
              errorText: state.cat.value.fold(
                  (failure) => failure.maybeWhen(validationFailure: (reason) => reason!, orElse: () => ""), (_) => ""),
            ),
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
      );
    });
  }
}
