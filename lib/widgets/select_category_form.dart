import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CategorySelectionForm extends StatelessWidget {
  final VoidCallback onTap;
  final String selectedCategory;

  const CategorySelectionForm({super.key, 
    required this.onTap,
    required this.selectedCategory,
  });

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
            onTap: onTap,
            borderRadius: BorderRadius.circular(0),
            child: Container(
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
                        if (selectedCategory.isNotEmpty)
                          Text(
                            selectedCategory,
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
