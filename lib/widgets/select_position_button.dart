import 'package:flutter/material.dart';

import '../utils/colors.dart';

class SelectPositionButton extends StatelessWidget {
  final String address;
  final int range;
  final VoidCallback onTap;

  const SelectPositionButton({
    Key? key,
    required this.address,
    required this.range,
    required this.onTap,
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
            onTap: onTap,
            borderRadius: BorderRadius.circular(0),
            child: Container(
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
                            const Icon(
                              Icons.location_on,
                              color: PersonalizedColor.mainColor,
                              size: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  address == ""
                                      ? "Position not chosen yet"
                                      : address,
                                  style: const TextStyle(
                                      color: PersonalizedColor.mainColor,
                                      fontSize: 15),
                                ),
                                if (range > 0)
                                  Text(
                                    "within $range km",
                                    style: const TextStyle(
                                        color: PersonalizedColor.mainColor),
                                  ),
                              ],
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
