import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/answer_claim.dart';
import '../utils/colors.dart';

class ClaimedItemCard extends StatelessWidget {
  final String itemImagePath;
  final String itemName;
  final String userImagePath;
  final String user;
  final bool
      onlyUser; // if only user true, the card display only the name of the user and his profile pic
  final bool
      onlyItem; // if onlyItem true, the card display only the name of the item and the image of the item, onlyUser must be false
  final bool open;
  final bool claimAnswered;

  const ClaimedItemCard({
    super.key,
    required this.itemImagePath,
    required this.itemName,
    required this.userImagePath,
    required this.user,
    required this.onlyUser,
    required this.onlyItem,
    required this.open,
    required this.claimAnswered,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: !open ? PersonalizedColor.primarySwatch.shade200 : Colors.white,
        child: InkWell(
          splashColor: !open
              ? PersonalizedColor.primarySwatch.shade500
              : Colors.grey.withOpacity(0.4),
          onTap: () => onTap(context),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
                width: 0.3,
              ),
            ),
            padding: const EdgeInsets.all(5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      onlyUser ? userImagePath : itemImagePath,
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
                              onlyUser ? user : itemName,
                              style: const TextStyle(fontSize: 17),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          onlyUser || onlyItem
                              ? Container()
                              : Text(
                                  onlyUser ? "Claimed by: $user" : itemName,
                                  style: const TextStyle(fontSize: 13),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                        ],
                      ),
                    ),
                  ),
                ),
                claimAnswered
                    ? const Icon(
                        Icons.check_circle,
                        color: PersonalizedColor.mainColor,
                        size: 40,
                      )
                    : const Icon(
                        Icons.chevron_right,
                        size: 50,
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTap(context) {
    if (claimAnswered) {
      showSnackBar(context);
    } else {
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

  showSnackBar(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        padding: EdgeInsets.all(30),
        backgroundColor: PersonalizedColor.mainColor,
        content: Text(
          'Claim already answered',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
