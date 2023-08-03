import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/core/presentation/select_position/select_position.dart';

import '../../../utils/colors.dart';

class SelectPositionButton extends StatelessWidget {
  final String address;
  final ValueChanged<LatLng?> onPositionSelected;
  final LatLng startingPosition;

  const SelectPositionButton({
    Key? key,
    required this.address,
    required this.onPositionSelected,
    this.startingPosition = const LatLng(43.102107520506756, 12.349117446797067),
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
                MaterialPageRoute(builder: (context) => SelectPositionScreen(startingPosition: startingPosition,)),
              );

              onPositionSelected(selectedPos);
            },
            borderRadius: BorderRadius.circular(0),
            child: SizedBox(
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
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
                            // TODO handle overflow
                            Text(
                              address == "" ? "Position not chosen yet" : address,
                              style: TextStyle(
                                  color: address == "" ? Colors.black : PersonalizedColor.mainColor, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
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
