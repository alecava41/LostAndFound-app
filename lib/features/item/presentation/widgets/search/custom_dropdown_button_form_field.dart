import 'package:flutter/material.dart';

class CustomDropdownFormField extends StatelessWidget {
  final List<DropdownMenuItem<String>> items;
  final String value;
  final void Function(String?) onChanged;

  const CustomDropdownFormField({super.key, 
    required this.items,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        filled: true,
      ),
      value: value,
      onChanged: onChanged,
      items: items,
    );
  }
}
