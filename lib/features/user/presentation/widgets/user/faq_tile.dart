import 'package:flutter/material.dart';

class FaqTile extends StatefulWidget {
  final String question;
  final String answer;

  const FaqTile({super.key, required this.question, required this.answer});

  @override
  _FaqTile createState() => _FaqTile();
}

class _FaqTile extends State<FaqTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: ExpansionTile(
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        expandedAlignment: Alignment.topLeft,
        title: Text(widget.question),
        onExpansionChanged: (expanded) {
          setState(() {
            isExpanded = expanded;
          });
        },
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(widget.answer),
          ),
        ],
      ),
    );
  }
}
