import 'package:flutter/material.dart';

class ImageDialogWidget extends StatelessWidget {
  final String userImagePath;
  final Widget child;

  const ImageDialogWidget({
    super.key,
    required this.userImagePath,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(userImagePath),
                ),
              );
            },
          );
        },
        child: child);
  }
}
