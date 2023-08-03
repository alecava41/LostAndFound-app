import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

// ignore: must_be_immutable
class InfoItem extends StatelessWidget {
  final String title;
  final String position;
  final String date;
  final String category;
  final bool isFound;
  String? question;

  InfoItem(
      {Key? key,
      required this.title,
      required this.position,
      required this.date,
      required this.category,
      required this.isFound,
      this.question})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 30),
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.location_on, size: 25),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  isFound ? "Found near $position" : "Lost near $position",
                  style: const TextStyle(fontSize: 18),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.calendar_month, size: 25),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  "Date of insertion: $date",
                  style: const TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.category, size: 25),
              const SizedBox(width: 5),
              Expanded(
                child: Text(
                  "Category: $category",
                  style: const TextStyle(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
            // TODO: aggiungere questo a file con BLOC
          question != null
              ? Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  decoration: const BoxDecoration(
                      color: PersonalizedColor.claimAcceptedStatusColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        question != null
                            ? const Text(
                                "Question to verify the ownership:",
                                style: TextStyle(fontSize: 18),
                              )
                            : Container(),
                        question != null ? Text(question!) : Container(),
                      ]),
                )
              : Container()
        ],
      ),
    );
  }
}
