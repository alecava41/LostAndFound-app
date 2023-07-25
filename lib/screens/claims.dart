import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../widgets/claimed_item_card.dart';

class ClaimsScreen extends StatefulWidget {
  const ClaimsScreen({super.key});

  @override
  State<ClaimsScreen> createState() => _ClaimsScreenState();
}

class _ClaimsScreenState extends State<ClaimsScreen> {
  late List<ClaimedItemCard> claims;
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPageIndex);
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
        // Add more items if necessary...
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PersonalizedColor.backGroundColor,
      appBar: AppBar(
        title: const Text(
          "Claims",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildCustomAppBar(), // Custom AppBar with page names and indicator
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPageIndex = index;
                  });
                },
                children: [
                  _buildClaimPage(claims), // First page with existing claims
                  _buildNewClaimPage(), // Second page to add new claim
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Builds the custom AppBar with page names and indicator
  Widget _buildCustomAppBar() {
    return Container(
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            
            children: [
              Text(
                "Page 1", // Name of the first page
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: _currentPageIndex == 0
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width/2,
                color:_currentPageIndex == 0
                    ? PersonalizedColor.mainColor
                    : Colors.transparent, // Indicator for the second page
              ),
                    
              
            ],
          ),
          Column(
            children: [
              Text(
                "Page 2", // Name of the second page
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: _currentPageIndex == 1
                      ? FontWeight.bold
                      : FontWeight.normal,
                ),
              ),
              SizedBox(height: 4),
              Container(
                height: 2,
                width: MediaQuery.of(context).size.width/2,
                color: _currentPageIndex == 1
                    ? PersonalizedColor.mainColor
                    : Colors.transparent, // Indicator for the second page
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Builds the first page with existing claims
  Widget _buildClaimPage(List<ClaimedItemCard> claims) {
    return RefreshIndicator(
      onRefresh: refreshPage,
      child: claims.isEmpty
          ? Container(
              height: MediaQuery.of(context).size.height,
              child: const SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      Icon(
                        Icons.connect_without_contact,
                        size: 80,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "No claims yet",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ),
              ),
            )
          : ListView.builder(
              itemCount: claims.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: claims[index],
                );
              },
            ),
    );
  }

  // Builds the second page to add a new claim
  Widget _buildNewClaimPage() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Add the logic to add a new claim here...
          // For example, you could show a dialog or navigate to a new page to add a claim.
        },
        child: Text("Add New Claim"),
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
    setState(() {
      claims.insert(0, newClaim);
    });
  }
}
