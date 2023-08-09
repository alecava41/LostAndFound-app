import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/select_position/select_position.dart';
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
              height: showError && errorText != "" ? 165 : 140,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                size: 40,
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
                                  // TODO errorColor is different from the default one, need to revise all custom error fields
                                  style: const TextStyle(color: Colors.red, fontSize: 12),
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
