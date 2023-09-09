import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../../../core/presentation/select_category/widgets/select_category_form.dart';
import '../../../../../core/presentation/widgets/check_boxes_form.dart';
import '../../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../../core/presentation/widgets/select_date_form.dart';
import '../../../../../core/presentation/widgets/select_position_button.dart';
import '../../../../../utils/colors.dart';
import '../../../../../utils/screen_size.dart';

class SearchOptionScreen extends StatelessWidget {
  const SearchOptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(builder: (ctx, state) {
      var sizedBox = SizedBox(
        height: ScreenSize.isBigSmartphoneDevice(context)
            ? 35
            : ScreenSize.isMediumSmartphoneDevice(context)
                ? 25
                : 10,
      );
      return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 20, 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        AppLocalizations.of(context)!.filters,
                        style: const TextStyle(fontSize: 30),
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
                    child: Text(AppLocalizations.of(context)!.deleteAll),
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
                  (failure) => failure.maybeWhen(
                      validationFailure: () => AppLocalizations.of(context)!.failureInvalidType, orElse: () => ""),
                  (_) => ""),
            ),
            sizedBox,
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
                  (failure) => failure.maybeWhen(
                      validationFailure: () => AppLocalizations.of(context)!.failureInvalidPosition, orElse: () => ""),
                  (_) => ""),
            ),
            sizedBox,
            CategorySelectionForm(
              onTap: (value) => ctx.read<SearchBloc>().add(SearchEvent.categorySelected(value.first, value.second)),
              category: state.category,
              showError: state.showError,
              errorText: state.cat.value.fold(
                  (failure) => failure.maybeWhen(
                      validationFailure: () => AppLocalizations.of(context)!.failureInvalidCategory, orElse: () => ""),
                  (_) => ""),
            ),
            sizedBox,
            DateSelectionForm(
              date: state.dateTime,
              onTap: (value) => ctx.read<SearchBloc>().add(SearchEvent.dateSelected(value)),
            ),
            sizedBox,
            PersonalizedLargeGreenButton(
              onPressed: () => ctx.read<SearchBloc>().add(const SearchEvent.searchSubmitted()),
              text: Text(AppLocalizations.of(context)!.search, style: const TextStyle(fontSize: 20, color: Colors.white)),
            )
          ],
        ),
      );
    });
  }
}
