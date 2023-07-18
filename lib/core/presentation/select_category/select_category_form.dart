import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/select_category/select_category.dart';

import '../../../utils/colors.dart';

class CategorySelectionForm extends StatelessWidget {
  final ValueChanged<Pair<int, String>> onTap;
  final String category;

  const CategorySelectionForm({
    super.key,
    required this.onTap,
    required this.category,
  });

  Future<void> navigateToCategorySelection(BuildContext context) async {
    final category = await Navigator.push<Pair<int, String>>(
      context,
      MaterialPageRoute(builder: (context) => const CategorySelectionScreen()),
    );

    if (category != null) {
      onTap(category);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: Colors.grey,
          thickness: 1,
          height: 0,
        ),
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: () async => {await navigateToCategorySelection(context)},
            borderRadius: BorderRadius.circular(0),
            child: SizedBox(
              height: 65,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Category",
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: [
                        if (category.isNotEmpty)
                          Text(
                            category,
                            style: const TextStyle(
                              fontSize: 15,
                              color: PersonalizedColor.mainColor,
                            ),
                          ),
                        const Icon(
                          Icons.chevron_right,
                          size: 50,
                        ),
                      ],
                    ),
                  ],
                ),
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
