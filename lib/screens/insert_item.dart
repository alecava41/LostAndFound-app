import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/widgets/confirm_exit_dialog.dart';
import 'package:lost_and_found/widgets/insert_string_form.dart';
import 'package:lost_and_found/widgets/media_selection_dialog.dart';
import 'package:lost_and_found/widgets/radio_buttons_form.dart';
import 'package:lost_and_found/widgets/select_category_form.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';
import 'package:lost_and_found/widgets/upload_photo_form.dart';

import '../utils/colors.dart';

// ignore: must_be_immutable
class InsertItemScreen extends StatefulWidget {
  String? imagePath;
  int? selectedLostOrFound;
  String? insertedTitle;
  String? insertedQuestion;
  String? categorySelected;
  String? selectedPosition;

  InsertItemScreen(
      {super.key,
      this.imagePath,
      this.selectedLostOrFound,
      this.categorySelected,
      this.insertedTitle,
      this.insertedQuestion,
      this.selectedPosition});

  @override
  State<InsertItemScreen> createState() => _InsertItemScreenState();
}

class _InsertItemScreenState extends State<InsertItemScreen> {
  XFile? image;
  int? selectedFoundOrLost = 1;
  String insertedTitle = '';
  String insertedQuestion = '';
  String categorySelected = '';
  String? imagePath;
  final ImagePicker picker = ImagePicker();
  LatLng? selectedPosition;

  @override
  void initState() {
    imagePath = widget.imagePath;
    if (widget.selectedLostOrFound != null) {
      selectedFoundOrLost = widget.selectedLostOrFound!;
    }
    if (widget.insertedTitle != null) {
      insertedTitle = widget.insertedTitle!;
    }
    if (widget.insertedQuestion != null) {
      insertedQuestion = widget.insertedQuestion!;
    }
    if (widget.categorySelected != null) {
      categorySelected = widget.categorySelected!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var uploadButton = Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: onUploadClick,
                style: ElevatedButton.styleFrom(
                  backgroundColor: PersonalizedColor.mainColor,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  widget.categorySelected != null ||
                          widget.imagePath != null ||
                          widget.insertedQuestion != null ||
                          widget.insertedTitle != null ||
                          widget.selectedLostOrFound != null ||
                          widget.selectedPosition != null
                      ? "Modify"
                      : "Upload",
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )),
          ),
        )
      ],
    );

    return WillPopScope(
      onWillPop: () async {
        if (somethingChecked()) {
          showDialogExit(context);
          return false;
        } else {
          return true;
        }
      },
      child: SafeArea(
          top: false,
          child: Scaffold(
            backgroundColor: PersonalizedColor.backGroundColor,
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: handleBackButtonPressed,
              ),
              iconTheme: const IconThemeData(color: Colors.black),
              title: const Text(
                "Insert an item",
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.white,
            ),
            body: SingleChildScrollView(
              child: Column(children: [
                UploadImageForm(
                  onUploadPhoto: onUploadPhoto,
                  onDeletePhoto: onDeletePhoto,
                  image: image,
                  imagePath: imagePath,
                ),
                _divider,
                const SizedBox(
                  height: 10,
                ),
                _divider,
                PersonalizedRadioButtonsForm(
                    text: "The item has been:",
                    selectedValue: selectedFoundOrLost,
                    onChanged: onChangedRadioButtonsValue),
                _divider,
                const SizedBox(
                  height: 10,
                ),
                _divider,
                PersonalizedFormWithTextInsertion(
                  title: "Title:",
                  onStringInserted: handleTitleInserted,
                  hintText: "e.g. Iphone 12 black",
                  text: insertedTitle,
                ),
                _divider,
                selectedFoundOrLost == 2 ? const SizedBox(
                  height: 10,
                ) : Container(),
                selectedFoundOrLost == 2 ? _divider : Container(),
                selectedFoundOrLost == 2
                    ? PersonalizedFormWithTextInsertion(
                        title: "Question to verify the ownership:",
                        onStringInserted: handleQuestionInserted,
                        hintText: "e.g. Any device scratches? Where?",
                        text: insertedQuestion,
                      )
                    : Container(),
                selectedFoundOrLost == 2 ? _divider : Container(),
                const SizedBox(
                  height: 10,
                ),
                SelectPositionButton(
                    address: (selectedPosition != null
                        ? "${selectedPosition?.latitude.toString()}, ${selectedPosition?.longitude.toString()}"
                        : widget.selectedPosition != null
                            ? widget.selectedPosition!
                            : ""),
                    onTap: (value) => onPositionSelection(value)),
                const SizedBox(
                  height: 10,
                ),
                CategorySelectionForm(
                    onTap: (value) => onCategorySelection(value),
                    selectedCategory: categorySelected),
                const SizedBox(
                  height: 40,
                ),
                uploadButton,
                const SizedBox(
                  height: 50,
                ),
              ]),
            ),
          )),
    );
  }

  void onCategorySelection(value) {
    setState(() {
      categorySelected = value;
    });
  }

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  void onTapGallery() {
    Navigator.pop(context);
    getImage(ImageSource.gallery);
  }

  void onTapCamera() {
    Navigator.pop(context);
    getImage(ImageSource.camera);
  }

  void onConfirm() {
    Navigator.pop(context);
    Navigator.pop(context);
  }

  void onCancel() {
    Navigator.pop(context);
  }

  //show choose media dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return MediaSelectionDialog(
              onTapGallery: onTapGallery, onTapCamera: onTapCamera);
        });
  }

  // Confirm exit dialog
  showDialogExit(context) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return ConfirmExitDialog(onConfirm: onConfirm, onCancel: onCancel);
        },
      );

  void handleTitleInserted(String string) {
    setState(() {
      insertedTitle = string;
    });
  }

  void handleQuestionInserted(String string) {
    setState(() {
      insertedQuestion = string;
    });
    print(insertedQuestion);
  }

  void onUploadPhoto() {
    myAlert();
  }

  void onDeletePhoto() {
    setState(() {
      image = null;
      imagePath = null;
    });
  }

  void onChangedRadioButtonsValue(int? value) {
    setState(() {
      selectedFoundOrLost = value;
    });
  }

  void handleBackButtonPressed() {
    if (somethingChecked()) {
      showDialogExit(context);
    } else {
      Navigator.pop(context);
    }
  }

  bool somethingChecked() {
    if (image != null ||
        insertedTitle != '' ||
        insertedQuestion != '' ||
        categorySelected != '' ||
        selectedFoundOrLost != 1) {
      return true;
    } else {
      return false;
    }
  }

  final _divider = const Divider(
    color: Colors.grey,
    thickness: 1,
    height: 0,
  );

  onPositionSelection(value) {
    setState(() {
      selectedPosition = value;
    });
  }

  void onUploadClick() {
    // upload or modify the item
    // (in caso l'oggetto venga MODIFICATO) ALE attento che se si modifica Lost o Found bisogna farlo cambiare di categoria anche nella home
    // attento a prendere l'immagine giusta!
  }
}
