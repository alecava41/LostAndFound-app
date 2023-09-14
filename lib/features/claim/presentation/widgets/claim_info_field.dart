import 'package:flutter/material.dart';

import '../../../../utils/colors/custom_color.dart';

class ClaimInfoField extends StatelessWidget {
  final String title;
  final Widget content;
  const ClaimInfoField({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              color: Theme.of(context).extension<CustomColors>()!.background2,
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: TextStyle(fontSize: 16, color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: content
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}