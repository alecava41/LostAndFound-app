import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/answer_question.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/circular_image_avatar.dart';
import 'package:lost_and_found/widgets/image_dialog_image.dart';
import 'package:lost_and_found/widgets/image_item.dart';
import 'package:lost_and_found/widgets/info_item.dart';

class FoundGenericItemScreen extends StatefulWidget {
  final String image;
  final String title;
  final String position;
  final String date;
  final String category;
  final String user;
  final String userImage;
  final bool isClaimed;
  final String claimStatus;

  const FoundGenericItemScreen(
      {Key? key,
      required this.image,
      required this.title,
      required this.position,
      required this.date,
      required this.category,
      required this.user,
      required this.userImage,
      required this.isClaimed,
      required this.claimStatus})
      : super(key: key);

  @override
  State<FoundGenericItemScreen> createState() => _FoundGenericItemScreenState();
}

class _FoundGenericItemScreenState extends State<FoundGenericItemScreen> {
  late bool isClaimed = widget.isClaimed;
  late String claimStatus = widget.claimStatus;

  @override
  Widget build(BuildContext context) {
    var claimColor = claimStatus == "ACCEPTED"
        ? PersonalizedColor.primarySwatch.shade200
        : widget.claimStatus == "DENIED"
            ? Colors.red.shade400
            : Colors.amber.shade300;

    var claimText = claimStatus == "ACCEPTED"
        ? Text(
            "Your claim has been accepted! Now coordinate with ${widget.user} through the chat for the item's return.")
        : claimStatus == "DENIED"
            ? Text(
                "Unfortunately, your claim has been denied by ${widget.user}, as the response you provided was not correct.")
            : Text("Wait for ${widget.user} to respond to your claim.");

    var claimButton = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              padding: const EdgeInsets.symmetric(
                vertical: 18,
              ),
            ),
            onPressed: () async {
              onClaimItem(context);
            },
            child: const Text(
              'Claim the item',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ),
      ]),
    );

    var claimStatusText = Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: claimColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.connect_without_contact,
                  size: 25,
                ),
                const SizedBox(width: 5),
                RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Claim status: ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      TextSpan(
                        text: claimStatus,
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            claimText
          ],
        ),
      ),
    );

    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageItem(imagePath: widget.image),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              InfoItem(
                title: widget.title,
                position: widget.position,
                date: widget.date,
                category: widget.category,
                isFound: false,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              const SizedBox(
                height: 20,
              ),
              isClaimed ? claimStatusText : claimButton,
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Found by:",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Row(
                                children: [
                                  ImageDialogWidget(
                                    userImagePath: widget.userImage,
                                    child: CircularImage(
                                      imagePath: widget.userImage,
                                      radius: 40,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 0, 0, 30),
                                      child: Text(
                                        widget.user,
                                        style: const TextStyle(fontSize: 20),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(
                                    color: PersonalizedColor.mainColor,
                                    width: 1.5),
                                shape: const StadiumBorder(),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16, horizontal: 15),
                              ),
                              onPressed: onSendMessage,
                              child: const Text(
                                'Send a message',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: PersonalizedColor.mainColor),
                              ),
                            ),
                          ],
                        ),
                      ]),
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                height: 0,
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSendMessage() {
    // send a message
  }

  Future<void> onClaimItem(BuildContext context) async {
    // claim the item
    final userAnswer = await Navigator.push<String>(
      context,
      MaterialPageRoute(
          builder: (context) =>
              const AnswerQuestionScreen(question: "This is a question")),
    );
    if (userAnswer != null) {
      setState(() {
        claimStatus = "WAITING";
        isClaimed = true;
      });
    }
  }
}
