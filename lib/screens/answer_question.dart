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
    return SafeArea(
        top: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text(
              "Answer the question",
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
                const Padding(
                  padding: EdgeInsets.fromLTRB(5, 0, 5, 10),
                  child: Text(
                    "To claim the item, please answer the following question correctly. If you can provide the correct answer, who found the item will proceed to give it back to you.",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 10),
                  child: Text("Question:"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Text(
                    widget.question,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                PersonalizedFormWithTextInsertion(
                    title: "Your answer",
                    onStringInserted: onAnswerChange,
                    hintText: ""),
                const SizedBox(
                  height: 30,
                ),
                PersonalizedLargeGreenButton(
                    onPressed: onSendPressed,
                    text: const Text(
                      "Send",
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ),
          )),
        ));
  }

  void onSendPressed() {
    // send the answer
  }

  void onAnswerChange(String value) {
    setState(() {
      userAnswer = value;
    });
  }
}
