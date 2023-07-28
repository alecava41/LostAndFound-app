import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/claimed_item_info.dart';
import 'package:lost_and_found/widgets/large_green_button.dart';

class AnswerClaimScreen extends StatefulWidget {
  final String question;
  final String answer;
  final String user;
  final String userImagePath;
  final String itemImagePath;
  final String itemName;

  const AnswerClaimScreen(
      {super.key,
      required this.question,
      required this.user,
      required this.userImagePath,
      required this.answer,
      required this.itemImagePath,
      required this.itemName});

  @override
  State<AnswerClaimScreen> createState() => _AnswerClaimScreenState();
}

class _AnswerClaimScreenState extends State<AnswerClaimScreen> {
  bool isInfoOpen = false;

  @override
  Widget build(BuildContext context) {
    var acceptButton = PersonalizedLargeGreenButton(
        onPressed: onAcceptPressed,
        text: const Text(
          "Accept",
          style: TextStyle(fontSize: 20),
        ));

    var declineButton = Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: onDeclinePressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const StadiumBorder(),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  "Decline",
                  style: TextStyle(fontSize: 20),
                )),
          ),
        )
      ],
    );

    var questionText = Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        widget.question,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );

    var answerText = Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
      child: Text(
        widget.answer,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );

    var explanationText = Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: Row(
        children: [
          const Text(
            "Claim decision",
            style: TextStyle(fontSize: 30),
          ),
          const SizedBox(width: 20,),
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
              "Answer to claim",
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
                  height: 10,
                ),
                explanationText,
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
                              "Please review the answer received and make a decision to either accept or decline the claim for the item. If the provided answer is correct, you can proceed with returning the item to its rightful owner.",
                            ),
                          ),
                        ),
                    )
                    : Container(),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Text("Item claimed:"),
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
                            isClaimed: true,
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
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Text("Answer:"),
                ),
                answerText,
                const SizedBox(
                  height: 30,
                ),
                acceptButton,
                const SizedBox(
                  height: 5,
                ),
                declineButton
              ],
            ),
          )),
        ));
  }

  void onAcceptPressed() {
    // accept the answer
  }

  void onDeclinePressed() {
    // decline the answer
  }

  void onInfoTap() {
    setState(() {
      isInfoOpen = !isInfoOpen;
    });
  }
}
