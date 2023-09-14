import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../core/presentation/widgets/custom_circular_progress.dart';
import '../../../../../utils/colors/custom_color.dart';
import '../../../../../utils/constants.dart';

class UploadImageForm extends StatelessWidget {
  final int itemId;
  final String token;
  final VoidCallback onSelectUploadMethod;
  final VoidCallback onDeletePhoto;
  final String? imagePath;
  final bool hasDeletedOriginalImage;

  const UploadImageForm({
    super.key,
    required this.itemId,
    required this.token,
    required this.onSelectUploadMethod,
    required this.onDeletePhoto,
    required this.imagePath,
    required this.hasDeletedOriginalImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              color: Colors.transparent,
              //height: 300,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.background,
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: !hasDeletedOriginalImage
                        ? Image.network(
                            "$baseUrl/api/items/$itemId/image",
                            fit: BoxFit.cover,
                            headers: {"Authorization": "Bearer $token"},
                            loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                              if (loadingProgress == null) return child;
                              return const CustomCircularProgress(size: 150);
                            },
                            errorBuilder: (context, error, stackTrace) => Image.asset(
                              noItemImagePath,
                              fit: BoxFit.cover,
                            ),
                          )
                        : () {
                            if (imagePath == null) {
                              return Center(
                                child: ElevatedButton(
                                  onPressed: onSelectUploadMethod,
                                  style: ElevatedButton.styleFrom(
                                    surfaceTintColor: Theme.of(context).primaryColor,
                                    backgroundColor: Theme.of(context).colorScheme.background,
                                    shape: const StadiumBorder(),
                                    padding: const EdgeInsets.all(20),
                                    side: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                      width: 0.4,
                                    ),
                                    elevation: 0,
                                  ).copyWith(
                                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Theme.of(context).extension<CustomColors>()!.buttonPressed!;
                                        }
                                        return Colors.transparent;
                                      },
                                    ),
                                  ),
                                  child: Text(
                                    AppLocalizations.of(context)!.uploadImageButton,
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ),
                              );
                            } else {
                              return Image.file(File(imagePath!));
                            }
                          }(),
                  ),
                  if (imagePath != null || !hasDeletedOriginalImage)
                    Positioned(
                      right: 16,
                      bottom: 10,
                      child: SizedBox(
                        width: 60,
                        height: 60,
                        child: FloatingActionButton(
                          onPressed: onDeletePhoto,
                          backgroundColor: Theme.of(context).colorScheme.error,
                          child: const Icon(
                            Icons.delete,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
