import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_card_home.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/no_item_message.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/screen_size.dart';
import '../../pages/insert_item_page.dart';

class FoundItemsContainer extends StatelessWidget {
  const FoundItemsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (ctx, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
            child: Text(
              AppLocalizations.of(context)!.yourFoundItems,
              style: const TextStyle(fontSize: 20),
            ),
          ),
          state.isLoading
              ? SizedBox(
                  height: ScreenSize.isBigSmartphoneDevice(context)
                      ? 240
                      : ScreenSize.isMediumSmartphoneDevice(context)
                          ? 210
                          : 180,
                  child: CustomCircularProgress(
                    size: ScreenSize.isBigSmartphoneDevice(context)
                        ? 240 / 2
                        : ScreenSize.isMediumSmartphoneDevice(context)
                            ? 210 / 2
                            : 180 / 2,
                  ),
                )
              : state.foundItems.isNotEmpty
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 25),
                      child: SizedBox(
                          height: ScreenSize.isBigSmartphoneDevice(context)
                              ? 240
                              : ScreenSize.isMediumSmartphoneDevice(context)
                                  ? 210
                                  : 180,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: state.foundItems
                                .map((item) => CustomCardHome(
                                      id: item.id,
                                      text: item.title,
                                      claims: item.claims,
                                      token: state.token,
                                      approvedClaims: item.approvedClaims, hasAdditionalInfo: true,
                                    ))
                                .toList(),
                          )),
                    )
                  : Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                      child: NoItemMessage(
                        message: AppLocalizations.of(context)!.noFoundItemContent,
                        icon: Icons.image_search_rounded,
                        buttonText: AppLocalizations.of(context)!.noFoundItemButton,
                        callback: () {
                          Navigator.of(ctx)
                              .pushNamed("/insert", arguments: InsertItemScreenArguments(isNewItemLost: false));
                        },
                      ),
                    ),
        ],
      );
    });
  }
}
