import 'package:flutter/material.dart';
import 'package:lost_and_found/widgets/text_field.dart';

// ignore: must_be_immutable
class PersonalizedFormWithTextInsertion extends StatelessWidget {
  final String title;
  final void Function(String) onStringInserted;
  final String hintText;
  String? text;

  PersonalizedFormWithTextInsertion(
      {super.key,
      required this.title,
      required this.onStringInserted,
      required this.hintText,
        // TODO: aggiungere questo a file con BLOC
      this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title),
            const SizedBox(height: 2),
            PersonalizedTextField(
              onStringInserted: onStringInserted,
              hintText: hintText,
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
