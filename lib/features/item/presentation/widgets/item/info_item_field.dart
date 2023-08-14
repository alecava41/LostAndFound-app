import 'package:flutter/material.dart';

import '../../../../../utils/colors.dart';

class InfoItemField extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  const InfoItemField({super.key, required this.icon, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: PersonalizedColor.mainColor,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    color: PersonalizedColor.mainColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0),
                    ),
                  ),
                  child: Row(
                    
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        icon,
                        size: 22,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        title,
                        style: const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          content,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
  }
}