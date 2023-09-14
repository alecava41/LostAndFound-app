import 'package:flutter/material.dart';

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
      cursorColor: Theme.of(context).primaryColor,
      onChanged: onTextChanged,
      minLines: 1,
      maxLines: maxLines,
      autovalidateMode: showError == true ? AutovalidateMode.always : AutovalidateMode.disabled,
      validator: (_) => errorText,
      decoration: InputDecoration(
          errorMaxLines: 3,
          hintText: hintText,
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Theme.of(context).primaryColor))),
    );
  }
}
