import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/answer_claim.dart';
import '../utils/colors.dart';

class ClaimedItemCard extends StatelessWidget {
  final String itemImagePath;
  final String itemName;
  final String userImagePath;
  final String user;

  const ClaimedItemCard({
    super.key,
    required this.itemImagePath,
    required this.itemName,
    required this.userImagePath,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: PersonalizedColor.primarySwatch.shade200,
        child: InkWell(
          splashColor: PersonalizedColor.primarySwatch.shade500,
          onTap: () => onTap(context),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      itemImagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Flexible(
                            child: Text(
                              itemName,
                              style: const TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Text(
                            "Claimed by: $user",
                            style: const TextStyle(fontSize: 13),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => AnswerClaimScreen(
              question: "This is a question",
              user: "GIANNI",
              userImagePath: userImagePath,
              answer: "This is an answer",
              itemImagePath: itemImagePath,
              itemName: itemName)),
    );
  }
}
