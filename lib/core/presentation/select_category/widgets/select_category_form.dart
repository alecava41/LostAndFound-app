import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/select_category/pages/select_category_page.dart';

import '../../../../utils/colors.dart';

class CategorySelectionForm extends StatelessWidget {
  final ValueChanged<Pair<int, String>> onTap;
  final String category;
  final bool showError;
  final String errorText;
  final bool removeAllOption;

  const CategorySelectionForm(
      {super.key,
      required this.onTap,
      required this.category,
      required this.showError,
      required this.errorText,
      this.removeAllOption = false});

  Future<void> navigateToCategorySelection(BuildContext context) async {
    final category = await Navigator.push<Pair<int, String>>(
      context,
      MaterialPageRoute(builder: (context) => CategorySelectionScreen(removeAllOption: removeAllOption)),
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
              height: showError && errorText != "" ? 80 : 65,
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
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
                      showError && category == ""
                          ? Text(
                            errorText,
                            textAlign: TextAlign.start,
                            style: const TextStyle(color: Colors.red, fontSize: 12),
                          )
                          : Container()
                    ],
                  )),
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