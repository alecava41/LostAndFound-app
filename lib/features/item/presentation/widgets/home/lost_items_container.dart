import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/pages/insert_item_page.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_card_home.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/no_item_message.dart';
import 'package:sizer/sizer.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/screen_size.dart';

class LostItemsContainer extends StatelessWidget {
  const LostItemsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (ctx, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 5),
              child: Text(
                AppLocalizations.of(context)!.yourLostItems,
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
                : state.lostItems.isNotEmpty
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: SizedBox(
                          height: ScreenSize.isBigSmartphoneDevice(context)
                              ? 230
                              : ScreenSize.isMediumSmartphoneDevice(context)
                                  ? 200
                                  : 170,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: state.lostItems
                                .map(
                                  (item) => CustomCardHome(
                                    id: item.id,
                                    text: item.title,
                                    claims: item.claims,
                                    token: state.token,
                                    approvedClaims: item.approvedClaims,
                                    hasAdditionalInfo: false,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: NoItemMessage(
                          icon: Icons.sentiment_very_satisfied_rounded,
                          message: AppLocalizations.of(context)!.noLostItemContent,
                          buttonText: AppLocalizations.of(context)!.noLostItemButton,
                          callback: () {
                            Navigator.of(ctx)
                                .pushNamed("/insert", arguments: InsertItemScreenArguments(isNewItemLost: true));
                          },
                        ),
                      ),
            SizedBox(
              height: 1.5.h,
            )
          ],
        );
      },
    );
  }
}
