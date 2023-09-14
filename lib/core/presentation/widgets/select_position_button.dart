import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/app_global/bloc/app_global_bloc.dart';
import 'package:lost_and_found/core/presentation/select_position/pages/select_position_page.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../utils/colors/custom_color.dart';

class SelectPositionButton extends StatelessWidget {
  final String address;
  final ValueChanged<LatLng?> onPositionSelected;
  final LatLng startingPosition;
  final bool isLoadingAddress;
  final bool showError;
  final String errorText;

  const SelectPositionButton({
    Key? key,
    required this.showError,
    required this.errorText,
    required this.address,
    required this.onPositionSelected,
    required this.isLoadingAddress,
    required this.startingPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppGlobalBloc, AppGlobalState>(
      builder: (appGlobalCtx, appGlobalState) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 0,
          ),
          Ink(
            color: Theme.of(context).extension<CustomColors>()!.background2,
            child: InkWell(
              onTap: () async {
                FocusManager.instance.primaryFocus?.unfocus();
                final selectedPos = await Navigator.push<LatLng>(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SelectPositionScreen(
                            startingPosition: startingPosition,
                          )),
                );

                onPositionSelected(selectedPos);
              },
              child: SizedBox(
                height: showError && errorText != "" ? 170 : 151,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              AppLocalizations.of(context)!.positionFormEntryTitle,
                              style: const TextStyle(fontSize: 22),
                            ),
                            Text(
                              AppLocalizations.of(context)!.positionFormEntrySubtitle,
                              style: TextStyle(color: Theme.of(context).extension<CustomColors>()!.secondaryTextColor),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: address.isEmpty ? Theme.of(context).extension<CustomColors>()!.secondaryTextColor : Theme.of(context).colorScheme.primary,
                                  size: 30,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      isLoadingAddress
                                          ? const CustomCircularProgress(size: 15)
                                          : Text(
                                              address == ""
                                                  ? AppLocalizations.of(context)!.positionFormEntryNotSelected
                                                  : address,
                                              maxLines: 2,
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                color: address.isEmpty ? Theme.of(context).extension<CustomColors>()!.secondaryTextColor : Theme.of(context).colorScheme.primary,
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            showError && (startingPosition == appGlobalState.defaultPosition || startingPosition == const LatLng(0, 0))
                                ? const SizedBox(height: 10)
                                : Container(),
                            showError && (startingPosition == appGlobalState.defaultPosition || startingPosition == const LatLng(0, 0))
                                ? Text(
                                    errorText,
                                    style: TextStyle(color: Theme.of(context).colorScheme.error, fontSize: 12),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.chevron_right,
                      size: 50,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            height: 0,
          ),
        ],
      ),
    );
  }
}
