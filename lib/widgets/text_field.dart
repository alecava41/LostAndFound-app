import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

class PersonalizedTextField extends StatelessWidget {
  final void Function(String) onStringInserted;
  final String hintText;

  const PersonalizedTextField(
      {super.key, required this.onStringInserted, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: PersonalizedColor.mainColor,
      onChanged: onStringInserted,
      decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: PersonalizedColor.mainColor))),
    );
  }
}
