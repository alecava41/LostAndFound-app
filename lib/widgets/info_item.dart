import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final String title;
  final String position;
  final String date;
  final String category;

  const InfoItem({
    Key? key,
    required this.title,
    required this.position,
    required this.date,
    required this.category,
  }) : super(key: key);

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
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.location_on, size: 25),
              const SizedBox(width: 5),
              Text(
                "Lost near $position",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.calendar_month, size: 25),
              const SizedBox(width: 5),
              Text(
                "Date of insertion: $date",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.category, size: 25),
              const SizedBox(width: 5),
              Text(
                "Category: $category",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
