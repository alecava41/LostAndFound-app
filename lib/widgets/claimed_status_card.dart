import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/found_generic_item.dart';
import 'package:lost_and_found/utils/colors.dart';

class ClaimedStatusCard extends StatelessWidget {
  final String itemImagePath;
  final String itemName;
  final String userImagePath;
  final String user;
  final String claimStatus; // (String) : ACCEPTED | DENIED | WAITING

  const ClaimedStatusCard({
    super.key,
    required this.itemImagePath,
    required this.itemName,
    required this.userImagePath,
    required this.user,
    required this.claimStatus,
  });

  @override
  Widget build(BuildContext context) {
    var claimColor = claimStatus == "ACCEPTED"
        ? PersonalizedColor.claimAcceptedStatusColor
        : claimStatus == "DENIED"
            ? PersonalizedColor.claimDeniedStatusColor
            : PersonalizedColor.claimWaitingStatusColor;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: Colors.white,
        child: InkWell(
          splashColor: Colors.grey.withOpacity(0.4),
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
                          Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: claimColor,
                            ),
                            child: RichText(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              text: TextSpan(
                                children: [
                                  const TextSpan(
                                    text: "Claim status: ",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: claimStatus,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
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
        builder: (context) => const FoundGenericItemScreen(
          image: 'assets/images/iphone.png',
          title: "Home key",
          position: "Via Trieste 65, Padova",
          date: "15/05/2023",
          category: "Keys",
          user: "Maria",
          userImage: "assets/images/occhiali.png",
          isClaimed: true,
          claimStatus: "ACCEPTED",
        ),
      ),
    );
  }
}
