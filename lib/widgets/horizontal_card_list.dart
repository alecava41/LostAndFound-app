import 'package:flutter/material.dart';
import 'package:lost_and_found/features/item/presentation/widgets/home/custom_card.dart';

class HorizontalCardList extends StatelessWidget {
  final List<CustomCard> cards;

  const HorizontalCardList({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240.0, // Specify a fixed height or adjust as needed
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: cards,
      ),
    );
  }
}
