import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class CustomExpansionTile extends StatelessWidget {
  final Widget title;
  final List<Widget> children;
  const CustomExpansionTile(
      {super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTileTheme(
      data: const ExpansionTileThemeData(
        collapsedIconColor: Colors.white,
        iconColor: PersonalizedColor.mainColor,
        collapsedBackgroundColor: PersonalizedColor.mainColor,
        backgroundColor: Colors.white54,
        textColor: PersonalizedColor.mainColor,
        collapsedTextColor: Colors.white,
      ),
      child: Card(
        child: ExpansionTile(
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          expandedAlignment: Alignment.topLeft,
          title: Row(children: [
            const Icon(
              Icons.question_mark_outlined,
            ),
            const SizedBox(
              width: 5,
            ),
            Expanded(child: title),
          ]),
          children: children,
        ),
      ),
    );
  }
}
