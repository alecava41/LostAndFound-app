import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';

import '../screens/select_position.dart';
import '../utils/colors.dart';

class SelectPositionButton extends StatefulWidget {
  final String address;
  final ValueChanged<LatLng> onTap;

  const SelectPositionButton({
    Key? key,
    required this.address,
    required this.onTap,
  }) : super(key: key);

  @override
  State<SelectPositionButton> createState() => _SelectPositionButtonState();
}

class _SelectPositionButtonState extends State<SelectPositionButton> {
  LatLng? selectedPosition;

  Future<void> navigateToSelectPosition(BuildContext context) async {
    final selectedPos = await Navigator.push<LatLng>(
      context,
      MaterialPageRoute(builder: (context) => const SelectPositionScreen()),
    );
    if (selectedPos != null) {
      setState(() {
        selectedPosition = selectedPos;
      });
      widget.onTap(selectedPos);
    }
  }

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
            onTap: () async => await navigateToSelectPosition(context),
            child: Container(
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
                        const Text(
                            "e.g. where the item has been found or lost"),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: widget.address == ""
                                  ? Colors.black
                                  : PersonalizedColor.mainColor,
                              size: 40,
                            ),
                            Text(
                              widget.address == ""
                                  ? "Position not chosen yet"
                                  : widget.address,
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: widget.address == ""
                                      ? Colors.black
                                      : PersonalizedColor.mainColor,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Expanded(
                    child: Icon(
                      Icons.chevron_right,
                      size: 50,
                    ),
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
