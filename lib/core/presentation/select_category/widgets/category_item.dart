import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class CategoryItem extends StatelessWidget {
  final String categoryName;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryItem({
    Key? key,
    required this.categoryName,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      color: Colors.grey,
      thickness: 1,
      height: 0,
    );

    return Column(
      children: [
        Material(
          color: Colors.white,
          child: InkWell(
            onTap: onTap,
            splashColor: PersonalizedColor.splashGreyColor,
            child: SizedBox(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 15,
                      ),
                      Icon(
                        icon,
                        size: 25,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        categoryName,
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
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
        divider,
      ],
    );
  }
}
