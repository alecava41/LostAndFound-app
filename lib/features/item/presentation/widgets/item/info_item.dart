import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lost_and_found/features/item/domain/entities/user_item.dart';
import 'package:lost_and_found/features/item/presentation/widgets/item/info_item_field.dart';


class InfoItem extends StatelessWidget {
  final String title;
  final String position;
  final DateTime date;
  final String category;
  final String? question;
  final ItemType type;

  const InfoItem({
    Key? key,
    required this.title,
    required this.position,
    required this.date,
    required this.category,
    required this.type,
    required this.question,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 35),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          const SizedBox(height: 10),
          InfoItemField(icon: Icons.location_on, title: type == ItemType.found ? "Found near" : "Lost near", content: position),
          const SizedBox(height: 10),
          InfoItemField(icon: Icons.calendar_month, title: "Date of insertion", content: DateFormat("dd/MM/yyyy").format(date)),
          const SizedBox(height: 10),
          InfoItemField(icon: Icons.category, title: "Category", content: category),
          question != null ? const SizedBox(height: 10) : Container(),
          question != null
              ? InfoItemField(icon: Icons.connect_without_contact, title: "Question to verify the ownership", content: question!)
              : Container(),
        
        ],
      ),
    );
  }
}
