import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/radio_buttons.dart';
import 'package:lost_and_found/widgets/select_position_button.dart';

import '../utils/colors.dart';

class InsertItemScreen extends StatefulWidget {
  const InsertItemScreen({super.key});

  @override
  State<InsertItemScreen> createState() => _InsertItemScreenState();
}

class _InsertItemScreenState extends State<InsertItemScreen> {
  String image = "assets/images/occhiali.png";
  int? selectedValue = 1;

  var _divider = const Divider(
    color: Colors.grey,
    thickness: 1,
    height: 0,
  );

  var uploadButton = Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            onPressed: () => {print("Upload a photo")},
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
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Insert an item",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Column(
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 200,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Container(
                          color: Colors.white,
                          child: Center(
                            child: image == ""
                                ? ElevatedButton(
                                    onPressed: () => {print("Upload a photo")},
                                    style: ElevatedButton.styleFrom(
                                      surfaceTintColor: Colors.green,
                                      backgroundColor: Colors.white,
                                      shape: const StadiumBorder(),
                                      padding: const EdgeInsets.all(20),
                                      side: BorderSide(
                                          color: PersonalizedColor.mainColor,
                                          width: 0.5),
                                      elevation: 0,
                                    ),
                                    child: const Text(
                                      "Upload a photo",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: PersonalizedColor.mainColor),
                                    ),
                                  )
                                : Image(
                                    image: AssetImage(image),
                                  ),
                          ),
                        ),
                        if (image != "")
                          Positioned(
                            right: 10,
                            bottom: 5,
                            child: FloatingActionButton(
                              onPressed: () {
                                setState(() {
                                  image = "";
                                });
                              },
                              backgroundColor: PersonalizedColor.mainColor,
                              child: const Icon(Icons.delete),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
          _divider,
          SizedBox(
            height: 10,
          ),
          _divider,
          Container(
            height: 90,
            color: Colors.white,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.00,0,0,0),
                  child: Text("The item has been:", style: TextStyle(fontSize: 20)),
                ),
                PersonalizedRadioButtons(
                    selectedValue: selectedValue,
                    onChanged: (value) => {
                          setState(() {
                            selectedValue = value;
                          })
                        })
              ]),
            ),
          ),
          _divider,
          SizedBox(
            height: 10,
          ),
          SelectPositionButton(address: "address", range: 2, onTap: (){}),
          uploadButton,
        ]),
      ),
    ));
  }
}
