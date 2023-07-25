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
  final bool open;

  const ClaimedItemCard({
    super.key,
    required this.itemImagePath,
    required this.itemName,
    required this.userImagePath,
    required this.user,
    required this.onlyUser,
    required this.open,
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
                          onlyUser
                              ? Container()
                              : Text(
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
                const Icon(
                    Icons.chevron_right,
                    size: 50,
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
