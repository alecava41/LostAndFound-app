import 'package:flutter/material.dart';


class CustomExpansionTile extends StatelessWidget {
  final Widget title;
  final List<Widget> children;

  const CustomExpansionTile({super.key, required this.title, required this.children});

  @override
  Widget build(BuildContext context) {
    return ExpansionTileTheme(
      data: ExpansionTileThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        collapsedIconColor: Theme.of(context).colorScheme.background,
        iconColor: Theme.of(context).colorScheme.primary,
        collapsedBackgroundColor: Theme.of(context).colorScheme.primary,
        backgroundColor: Theme.of(context).colorScheme.onTertiary,
        textColor: Theme.of(context).colorScheme.primary,
        collapsedTextColor: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.antiAlias,
        child: ExpansionTile(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          expandedAlignment: Alignment.topLeft,
          title: Row(
            children: [
              const Icon(
                Icons.question_mark_outlined,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(child: title),
            ],
          ),
          children: children,
        ),
      ),
    );
  }
}
