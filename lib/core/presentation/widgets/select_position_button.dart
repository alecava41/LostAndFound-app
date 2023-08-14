import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/select_position/pages/select_position_page.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';
import 'package:lost_and_found/utils/constants.dart';

import '../../../utils/colors.dart';

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
    this.startingPosition = defaultPosition,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Ink(
          color: Colors.white,
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
              height: showError && errorText != "" ? 155 : 130,
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
                          const Text(
                            "Position",
                            style: TextStyle(fontSize: 25),
                          ),
                          const Text("e.g. where the item has been found or lost"),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: address == "" ? Colors.black : PersonalizedColor.mainColor,
                                size: 30,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    isLoadingAddress
                                        ? const CustomCircularProgress(size: 15)
                                        : Text(
                                            address == "" ? "Position not chosen yet" : address,
                                            maxLines: 2,
                                            style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              color: address == "" ? Colors.black : PersonalizedColor.mainColor,
                                            ),
                                          ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          showError && (startingPosition == defaultPosition || startingPosition == const LatLng(0, 0))
                              ? const SizedBox(height: 10)
                              : Container(),
                          showError && (startingPosition == defaultPosition || startingPosition == const LatLng(0, 0))
                              ? Text(
                                  errorText,
                                  style: TextStyle(color: Colors.redAccent.shade700, fontSize: 12),
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
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
      ],
    );
  }
}
