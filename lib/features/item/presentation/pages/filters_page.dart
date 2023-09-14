import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/app_global/bloc/app_global_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/search/search_bloc.dart';
import 'package:lost_and_found/utils/colors/custom_color.dart';

import '../../../../core/presentation/select_category/widgets/select_category_form.dart';
import '../../../../core/presentation/widgets/check_boxes_form.dart';
import '../../../../core/presentation/widgets/large_green_button.dart';
import '../../../../core/presentation/widgets/select_date_form.dart';
import '../../../../core/presentation/widgets/select_position_button.dart';
import '../../../../utils/screen_size.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var sizedBox = SizedBox(
      height: ScreenSize.isBigSmartphoneDevice(context)
          ? 35
          : ScreenSize.isMediumSmartphoneDevice(context)
              ? 25
              : 10,
    );
    return BlocBuilder<AppGlobalBloc, AppGlobalState>(
      builder: (appGlobalCtx, appGlobalState) => BlocConsumer<SearchBloc, SearchState>(
        listener: (ctx, state) {
          if (state.searchFailureOrSuccess != null && state.searchFailureOrSuccess!.isRight()) {
            Navigator.pop(ctx);
          }
        },
        builder: (ctx, state) {
          return Scaffold(
            backgroundColor: Theme.of(context).colorScheme.background,
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(ctx),
              ),
              iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
              title: Text(
                AppLocalizations.of(context)!.filtersPageTitle,
                style: TextStyle(color: Theme.of(context).colorScheme.onBackground),
              ),
              backgroundColor: Theme.of(context).extension<CustomColors>()!.background2,
              elevation: 0,
              surfaceTintColor: Theme.of(context).colorScheme.outline,
              shadowColor: Theme.of(context).colorScheme.outline,
            ),
            body: SafeArea(
              child: SingleChildScrollView(
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
                              Text(
                                AppLocalizations.of(context)!.filters,
                                style: const TextStyle(fontSize: 30),
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () => ctx.read<SearchBloc>().add(const SearchEvent.resetFilters()),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Theme.of(context).colorScheme.primary,
                              shape: const StadiumBorder(),
                              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                            ),
                            child: Text(AppLocalizations.of(context)!.deleteAll, style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),),
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
                              validationFailure: () => AppLocalizations.of(context)!.failureInvalidType,
                              orElse: () => ""),
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
                      startingPosition: state.pos.value.getOrElse(() => appGlobalState.defaultPosition),
                      showError: state.showError,
                      errorText: state.pos.value.fold(
                          (failure) => failure.maybeWhen(
                              validationFailure: () => AppLocalizations.of(context)!.failureInvalidPosition,
                              orElse: () => ""),
                          (_) => ""),
                    ),
                    sizedBox,
                    CategorySelectionForm(
                      onTap: (value) =>
                          ctx.read<SearchBloc>().add(SearchEvent.categorySelected(value.first, value.second)),
                      category: state.category,
                      showError: state.showError,
                      errorText: state.cat.value.fold(
                          (failure) => failure.maybeWhen(
                              validationFailure: () => AppLocalizations.of(context)!.failureInvalidCategory,
                              orElse: () => ""),
                          (_) => ""),
                    ),
                    sizedBox,
                    DateSelectionForm(
                      date: state.dateTime,
                      onTap: (value) => ctx.read<SearchBloc>().add(SearchEvent.dateSelected(value)),
                    ),
                    sizedBox,
                    PersonalizedLargeGreenButton(
                      onPressed: () => {ctx.read<SearchBloc>().add(const SearchEvent.searchSubmitted(false))},
                      text: Text(
                        AppLocalizations.of(context)!.search,
                        style: TextStyle(fontSize: 20, color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
