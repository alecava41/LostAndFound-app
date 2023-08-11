import 'package:flutter/material.dart';
// ignore: must_be_immutable
class PersonalizedTextField extends StatefulWidget {
  final void Function(String) onStringInserted;
  final String hintText;
  String? text;

  PersonalizedTextField({
    Key? key,
    required this.onStringInserted,
    required this.hintText,
    this.text,
  }) : super(key: key);

  @override
  State<PersonalizedTextField> createState() => _PersonalizedTextFieldState();
}

class _PersonalizedTextFieldState extends State<PersonalizedTextField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    // Initialize the controller with the title value if it is provided
    _textEditingController = TextEditingController(text: widget.text);
  }

  @override
  void dispose() {
    // Dispose of the controller when it is no longer needed
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      onChanged: widget.onStringInserted,
      minLines: 1,
      maxLines: 4,
      decoration: InputDecoration(
        hintText: widget.hintText,
      ),
    );
  }
}
