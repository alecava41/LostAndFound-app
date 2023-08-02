import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class MediaSelectionDialog extends StatelessWidget {
  final VoidCallback onTapGallery;
  final VoidCallback onTapCamera;

  const MediaSelectionDialog({
    Key? key,
    required this.onTapGallery,
    required this.onTapCamera,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      title: const Text('Please select a media option'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: PersonalizedColor.mainColor,
            ),
            onPressed: onTapGallery,
            child: const Row(
              children: [
                Icon(Icons.image),
                SizedBox(
                  width: 5,
                ),
                Text('Gallery'),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: PersonalizedColor.mainColor,
            ),
            onPressed: onTapCamera,
            child: const Row(
              children: [
                Icon(Icons.camera),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Camera',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
