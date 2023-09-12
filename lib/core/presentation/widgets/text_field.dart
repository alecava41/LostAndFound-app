import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class PersonalizedTextField extends StatelessWidget {
  final void Function(String) onTextChanged;
  final String hintText;
  final bool showError;
  final bool isValid;
  final String? errorText;
  final String text;
  final int maxLines;

  const PersonalizedTextField(
      {super.key,
      required this.onTextChanged,
      required this.hintText,
      required this.showError,
      required this.isValid,
        required this.text,
        this.maxLines = 4,
      required this.errorText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      textCapitalization: TextCapitalization.sentences,
      cursorColor: PersonalizedColor.mainColor,
      onChanged: onTextChanged,
      minLines: 1,
      maxLines: maxLines,
      autovalidateMode: showError == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (_) => errorText,
      decoration: InputDecoration(
          errorMaxLines: 3,
          hintText: hintText,
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: PersonalizedColor.mainColor))),
    );
  }
}
