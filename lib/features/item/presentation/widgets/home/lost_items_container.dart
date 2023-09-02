import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lost_and_found/features/item/presentation/bloc/home/home_bloc.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_card_home.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/no_item_message.dart';
import 'package:sizer/sizer.dart';

import '../../../../../utils/screen_size.dart';

class LostItemsContainer extends StatelessWidget {
  const LostItemsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (ctx, state) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Text(
              "Your lost items",
              style: TextStyle(fontSize: 20),
            ),
          ),
          state.lostItems.isNotEmpty
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
                                hasImage: item.hasImage,
                                approvedClaims: item.approvedClaims,
                              ),
                            )
                            .toList(),
                      )),
                )
              : const Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: NoItemMessage(
                    icon: Icons.sentiment_very_satisfied_rounded,
                    message: "You have no lost item!",
                  )),
          SizedBox(
            height: 4.h,
          )
        ],
      );
    });
  }
}
