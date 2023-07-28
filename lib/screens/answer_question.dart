import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/claimed_item_info.dart';
import 'package:lost_and_found/widgets/insert_string_form.dart';
import 'package:lost_and_found/widgets/large_green_button.dart';

import '../utils/colors.dart';

class AnswerQuestionScreen extends StatefulWidget {
  final String question;

  final String itemImagePath;

  final String itemName;

  final String userImagePath;

  final String user;

  const AnswerQuestionScreen(
      {super.key,
      required this.question,
      required this.itemImagePath,
      required this.itemName,
      required this.userImagePath,
      required this.user});

  @override
  State<AnswerQuestionScreen> createState() => _AnswerQuestionScreenState();
}

class _AnswerQuestionScreenState extends State<AnswerQuestionScreen> {
  String userAnswer = "";
  bool isInfoOpen = false;

  @override
  Widget build(BuildContext context) {
    var sendButton = PersonalizedLargeGreenButton(
        onPressed: userAnswer.isEmpty ? null : onSendPressed,
        text: const Text(
          "Send",
          style: TextStyle(fontSize: 20),
        ));

    var inputTextForm = PersonalizedFormWithTextInsertion(
        title: "Your answer", onStringInserted: onAnswerChange, hintText: "");

    var questionText = Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        widget.question,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );

    var title = Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: Row(
        children: [
          const Text(
            "Claim item",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: onInfoTap,
            child: const Icon(
              Icons.info,
              size: 30,
              color: Color.fromRGBO(144, 202, 249, 1),
            ),
          ),
        ],
      ),
    );

    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Answer claim question",
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                title,
                isInfoOpen
                    ? Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              "To claim the item, please answer the following question correctly. If you can provide the correct answer, who found the item will proceed to give it back to you.",
                            ),
                          ),
                        ),
                      )
                    : Container(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Text("Item you are claiming:"),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Container(
                      decoration: BoxDecoration(
                        color: PersonalizedColor.primarySwatch.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: ClaimedItemInfo(
                          itemImagePath: widget.itemImagePath,
                          itemName: widget.itemName,
                          userImagePath: widget.userImagePath,
                          user: widget.user,
                          isClaimed: false,
                        ),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Text("Question:"),
                ),
                questionText,
                const SizedBox(
                  height: 20,
                ),
                inputTextForm,
                const SizedBox(
                  height: 30,
                ),
                sendButton
              ],
            ),
          )),
        ));
  }

  void onSendPressed() {
    // send the answer
    Navigator.pop(context, userAnswer);
  }

  void onAnswerChange(String value) {
    setState(() {
      userAnswer = value;
    });
  }

  void onInfoTap() {
    setState(() {
      isInfoOpen = !isInfoOpen;
    });
  }
}
