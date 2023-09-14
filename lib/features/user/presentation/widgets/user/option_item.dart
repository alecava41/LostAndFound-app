import 'package:flutter/material.dart';

import '../../../../../utils/colors/custom_color.dart';

class OptionItem extends StatelessWidget {
  final IconData icon;
  final String optionName;
  final VoidCallback onTap;
  final bool showArrow;

  const OptionItem({Key? key, required this.icon, required this.optionName, required this.onTap, this.showArrow = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 0,
    );

    return Column(
      children: [
        Material(
          color: Theme.of(context).extension<CustomColors>()!.background2,
          child: InkWell(
            onTap: onTap,
            splashColor: Theme.of(context).extension<CustomColors>()!.splashGreyColor,
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Icon(
                        icon,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Text(
                        optionName,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  showArrow
                      ? const Icon(
                          Icons.chevron_right,
                          size: 50,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        divider,
      ],
    );
  }
}
