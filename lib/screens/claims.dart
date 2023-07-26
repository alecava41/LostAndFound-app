import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/claimed_status_card.dart';

import '../widgets/claimed_item_card.dart';

class ClaimsScreen extends StatefulWidget {
  const ClaimsScreen({super.key});

  @override
  State<ClaimsScreen> createState() => _ClaimsScreenState();
}

class _ClaimsScreenState extends State<ClaimsScreen> {
  late List<ClaimedItemCard> claims;
  late List<ClaimedStatusCard> userClaims;

  @override
  void initState() {
    super.initState();
    setState(() {
      claims = [
        const ClaimedItemCard(
          itemImagePath: "assets/images/key.png",
          itemName: "Iphone sssssssssssssssssssssssssssssssss12",
          userImagePath: "assets/images/no-image.png",
          user: "Gsadsaaddasdasdsadsadassdsdasdsadsacefesads",
          onlyUser: false,
          open: true,
        ),
        const ClaimedItemCard(
          itemImagePath: "assets/images/key.png",
          itemName: "Iphone 12",
          userImagePath: "assets/images/key.png",
          user: "Gianni",
          onlyUser: false,
          open: true,
        ),
        const ClaimedItemCard(
          itemImagePath: "assets/images/key.png",
          itemName: "Iphone 12",
          userImagePath: "assets/images/no-image.png",
          user: "Gianni",
          onlyUser: false,
          open: true,
        ),
        const ClaimedItemCard(
          itemImagePath: "assets/images/key.png",
          itemName: "Iphone 12",
          userImagePath: "assets/images/no-image.png",
          user: "Gianni",
          onlyUser: false,
          open: true,
        ),
      ];
      userClaims = [];
    });
  }

  @override
  Widget build(BuildContext context) {
    var claimsRecivedPage = RefreshIndicator(
      onRefresh: refreshPage,
      child: claims.isEmpty
          ? Container(
              height: MediaQuery.of(context).size.height,
              child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Center(
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Icon(
                      Icons.connect_without_contact,
                      size: 80,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "No claims yet",
                      style: TextStyle(fontSize: 25),
                    ),
                  ]),
                ),
              ),
            )
          : ListView.builder(
              itemCount: claims.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: claims[index]);
              },
            ),
    );

    var claimsStatus = RefreshIndicator(
      onRefresh: refreshPage,
      child: userClaims.isEmpty
          ? Container(
              height: MediaQuery.of(context).size.height,
              child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Center(
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Icon(
                      Icons.connect_without_contact,
                      size: 80,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "You have not claimed any item yet",
                      style: TextStyle(fontSize: 20),
                    ),
                  ]),
                ),
              ),
            )
          : ListView.builder(
              itemCount: userClaims.length,
              itemBuilder: (context, index) {
                return Container(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: userClaims[index]);
              },
            ),
    );

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: PersonalizedColor.backGroundColor,
        appBar: AppBar(
          title: const Text(
            "Claims",
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Colors.black),
          bottom: const TabBar(tabs: [
            Tab(
              child: Text(
                "Recived claims",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                "Your claims",
                style: TextStyle(color: Colors.black),
              ),
            )
          ]),
        ),
        body: SafeArea(
          top: false,
          child: TabBarView(children: [claimsRecivedPage, claimsStatus]),
        ),
      ),
    );
  }

  Future<void> refreshPage() async {
    // Simulate an asynchronous operation for page refreshing
    await Future.delayed(const Duration(seconds: 2));
    ClaimedItemCard newClaim = const ClaimedItemCard(
      itemImagePath: "assets/images/key.png",
      itemName: "Iphone 12",
      userImagePath: "assets/images/no-image.png",
      user: "Gianni",
      onlyUser: false,
      open: false,
    );
    ClaimedStatusCard newUserClaim = const ClaimedStatusCard(
      itemImagePath: "assets/images/key.png",
      itemName: "Iphone 12",
      userImagePath: "assets/images/no-image.png",
      user: "Gianni",
      claimStatus: "ACCEPTED",
    );
    setState(() {
      claims.insert(0, newClaim);
      userClaims.insert(0, newUserClaim);
    });
  }
}
