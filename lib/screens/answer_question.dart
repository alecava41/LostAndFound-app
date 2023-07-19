import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/insert_string_form.dart';
import 'package:lost_and_found/widgets/large_green_button.dart';

class AnswerQuestionScreen extends StatefulWidget {
  final String question;

  const AnswerQuestionScreen({super.key, required this.question});

  @override
  State<AnswerQuestionScreen> createState() => _AnswerQuestionScreenState();
}

class _AnswerQuestionScreenState extends State<AnswerQuestionScreen> {
  String userAnswer = "";

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

    const explanationText = Padding(
      padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
      child: Text(
        "To claim the item, please answer the following question correctly. If you can provide the correct answer, who found the item will proceed to give it back to you.",
        style: TextStyle(fontSize: 16),
      ),
    );

    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Claim item",
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
                explanationText,
                const SizedBox(
                  height: 40,
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
}
