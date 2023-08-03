import 'package:flutter/material.dart';
import 'package:lost_and_found/core/presentation/widgets/text_field.dart';

class PersonalizedFormWithTextInsertion extends StatelessWidget {
  final String title;
  final void Function(String) onTextChanged;
  final String hintText;
  final bool showError;
  final bool isValid;
  final String? errorText;
  final String text;

  const PersonalizedFormWithTextInsertion(
      {super.key,
        this.text = "",
      required this.title,
      required this.onTextChanged,
      required this.hintText,
      required this.errorText,
        required this.isValid,
      required this.showError});

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
              onTextChanged: onTextChanged,
              errorText: errorText,
              showError: showError,
              isValid: isValid,
              hintText: hintText,
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
