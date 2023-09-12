import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/custom_circular_progress.dart';

class ImageDialogWidget extends StatelessWidget {
  final String imageUrl;
  final String token;
  final Widget child;
  final Image errorImage;

  const ImageDialogWidget(
      {super.key, required this.imageUrl, required this.token, required this.child, required this.errorImage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.cover,
                    headers: {"Authorization": "Bearer $token"},
                    loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const CustomCircularProgress(size: 100);
                    },
                    errorBuilder: (context, error, stackTrace) => errorImage,
                  ),
                ),
              );
            },
          );
        },
        child: child);
  }
}
