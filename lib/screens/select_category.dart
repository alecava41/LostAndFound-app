import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/category_item.dart';

class CategorySelectionScreen extends StatelessWidget {
  const CategorySelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalizedColor.backGroundColor,
      appBar: AppBar(
        title: const Text(
          'Choose a category',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CategoryItem(
              categoryName: "Smartphone ",
              icon: Icons.smartphone,
              onTap: () {
                Navigator.pop(context, "Smartphone");
              },
            ),
            CategoryItem(
              categoryName: "Glasses",
              icon: Icons.remove_red_eye,
              onTap: () {
                Navigator.pop(context, "Glasses");
              },
            ),
            CategoryItem(
              categoryName: "Bag",
              icon: Icons.shopping_bag,
              onTap: () {
                Navigator.pop(context, "Bag");
              },
            ),
            CategoryItem(
              categoryName: "Watch",
              icon: Icons.watch,
              onTap: () {
                Navigator.pop(context, "Watch");
              },
            ),
            CategoryItem(
              categoryName: "Jewelry ",
              icon: Icons.diamond,
              onTap: () {
                Navigator.pop(context, "Jewelry ");
              },
            ),
            CategoryItem(
              categoryName: "Headphones",
              icon: Icons.headphones,
              onTap: () {
                Navigator.pop(context, "Headphones");
              },
            ),
          ],
        ),
      ),
    );
  }
}
