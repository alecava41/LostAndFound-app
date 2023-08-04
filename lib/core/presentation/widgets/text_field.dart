import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class PersonalizedTextField extends StatelessWidget {
  final void Function(String) onTextChanged;
  final String hintText;
  final bool showError;
  final bool isValid;
  final String? errorText;
  final String text;

  const PersonalizedTextField(
      {super.key,
      required this.onTextChanged,
      required this.hintText,
      required this.showError,
      required this.isValid,
        required this.text,
      required this.errorText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: text,
      cursorColor: PersonalizedColor.mainColor,
      onChanged: onTextChanged,
      minLines: 1,
      maxLines: 4,
      autovalidateMode: showError == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (_) => errorText,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: const UnderlineInputBorder(borderSide: BorderSide(color: PersonalizedColor.mainColor))),
    );
  }
}
