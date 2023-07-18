import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/widgets/editable_circular_image.dart';
import 'package:lost_and_found/widgets/option_item.dart';

class OptionScreenPage extends StatelessWidget {
  final String userImagePath;
  final String userName;
  final Function onPhotoChange;
  final XFile? userImageFile;

  const OptionScreenPage(
      {super.key,
      required this.userImagePath,
      required this.userName,
      required this.onPhotoChange,
      this.userImageFile});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 25, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Profile",
                    style: TextStyle(fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                    child: Row(
                      children: [
                        Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              EditableCircularImage(
                                imageFile: userImageFile,
                                imagePath: userImagePath,
                                onPhotoChange: onPhotoChange,
                                radius: 70,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Text(
                                    userName,
                                    style: const TextStyle(fontSize: 25),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          SizedBox(
            height: 30,
          ),
          const Divider(
            color: Colors.grey,
            thickness: 1,
            height: 0,
          ),
          OptionItem(optionName: "Change password", onTap: (){onChangePasswordTap(context);})
        ],
      ),
    );
  }

  void onChangePasswordTap(context) {
    Navigator.of(context).pushNamed(
      '/options/changePassword',
    );
  }
}
