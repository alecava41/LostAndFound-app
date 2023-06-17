import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lost_and_found/widgets/insert_string_form.dart';
import 'package:lost_and_found/widgets/radio_buttons_form.dart';
import 'package:lost_and_found/widgets/select_category_form.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';
import 'package:lost_and_found/widgets/upload_photo_form.dart';

import '../utils/colors.dart';

class InsertItemScreen extends StatefulWidget {
  const InsertItemScreen({super.key});

  @override
  State<InsertItemScreen> createState() => _InsertItemScreenState();
}

class _InsertItemScreenState extends State<InsertItemScreen> {
  XFile? image;
  int? selectedFoundOrLost = 1;
  String insertedTitle = '';
  String insertedQuestion = '';
  String categorySelected = '';
  final ImagePicker picker = ImagePicker();
  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  //show popup dialog
  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PersonalizedColor.mainColor
                    ),
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: const Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: PersonalizedColor.mainColor
                    ),
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void handleTitleInserted(String string) {
    setState(() {
      insertedTitle = string;
    });
  }

  void handleQuestionInserted(String string) {
    setState(() {
      insertedTitle = string;
    });
  }

  void onUploadPhoto() {
    myAlert();
  }

  void onDeletePhoto() {
    setState(() {
      image = null;
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

  showDialogExit(context) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Confirm Exit'),
            content: const Text(
                'Exiting the insertion will delete your current progress. Are you sure you want to exit?'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: PersonalizedColor.mainColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                  Navigator.pop(context); // Pop the current route
                },
                child: const Text(
                  'Yes',
                  style: TextStyle(color: PersonalizedColor.mainColor),
                ),
              ),
            ],
          );
        },
      );

  var uploadButton = Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () => {print("Item uploaded")},
            style: ElevatedButton.styleFrom(
              backgroundColor: PersonalizedColor.mainColor,
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            child: const Text(
              "Upload",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
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
          child: Scaffold(
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
                image: image),
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
                hintText: "e.g. Iphone 12 black"),
            _divider,
            const SizedBox(
              height: 10,
            ),
            _divider,
            PersonalizedFormWithTextInsertion(
              title: "Question to verify the ownership:",
              onStringInserted: handleQuestionInserted,
              hintText: "e.g. Any device scratches? Where?",
            ),
            _divider,
            const SizedBox(
              height: 10,
            ),
            SelectPositionButton(address: "address", range: 2, onTap: () {}),
            const SizedBox(
              height: 10,
            ),
            CategorySelectionForm(
                onTap: () {}, selectedCategory: categorySelected),
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
}
