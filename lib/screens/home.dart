import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/screens/chat.dart';
import 'package:lost_and_found/screens/found_generic_item.dart';
import 'package:lost_and_found/screens/lost_geric_item.dart';
import 'package:lost_and_found/screens/lost_user_item.dart';
import 'package:lost_and_found/screens/pages/home_page.dart';
import 'package:lost_and_found/screens/pages/inbox.dart';
import 'package:lost_and_found/screens/pages/option_page.dart';
import 'package:lost_and_found/screens/pages/search_page.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/claimed_item_card.dart';
import 'package:lost_and_found/widgets/inbox_item.dart';

import '../widgets/card.dart';
import 'found_user_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 3;
  late var _findItems;
  late var _lostItems;
  DateTime? date;
  String category = "";
  bool _foundChecked = false;
  bool _lostChecked = false;
  LatLng? selectedPosition;
  String userImagePath = "assets/images/no-image.png";
  String userName = "Alessandro";
  XFile? userImageFile;
  late List<InboxItem> inboxItems;

  @override
  void initState() {
    super.initState();
    inboxItems = [
      InboxItem(
        userImagePath: "assets/images/no-image.png",
        userName: "Maria",
        lastMessage: "Thank you!",
        open: true,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(
                    userTo: 'Maria',
                    userToImage: 'assets/images/no-image.png',
                    userHasDoneClaim: false,
                    userHasRecivedClaim: true),
              ));
        },
      ),
      InboxItem(
        userImagePath: "assets/images/no-image.png",
        userName: "Maria",
        lastMessage: "Thank you!",
        open: false,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(
                    userTo: 'Maria',
                    userToImage: 'assets/images/no-image.png',
                    userHasDoneClaim: true,
                    userHasRecivedClaim: false),
              ));
        },
      ),
      InboxItem(
        userImagePath: "assets/images/no-image.png",
        userName: "Maria",
        lastMessage: "Thank you!",
        open: true,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ChatScreen(
                  userTo: 'Maria',
                  userToImage: 'assets/images/no-image.png',
                  userHasDoneClaim: true,
                  userHasRecivedClaim: false,
                ),
              ));
        },
      )
    ];
    var findItems = [
      CustomCard(
          imagePath: "assets/images/key.png",
          text: "Home key",
          nclaims: 2,
          onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FoundUserItemScreen(
                      image: "assets/images/key.png",
                      title: "Home key",
                      position: "Via Trieste 65, Padova",
                      date: "15/05/2023",
                      category: "Keys",
                      claims: [
                        ClaimedItemCard(
                          itemImagePath: "assets/images/key.png",
                          itemName:
                              "Iphone sssssssssssssssssssssssssssssssss12",
                          userImagePath: "assets/images/no-image.png",
                          user: "Gsadsaaddasdasdsadsadassdsdasdsadsacefesads",
                          onlyUser: true,
                          open: true,
                          claimAnswered: true,
                          onlyItem: false,
                        ),
                        ClaimedItemCard(
                          itemImagePath: "assets/images/key.png",
                          itemName: "Iphone 12",
                          userImagePath: "assets/images/key.png",
                          user: "Gianni",
                          onlyUser: true,
                          open: true,
                          claimAnswered: false,
                          onlyItem: false,
                        ),
                        ClaimedItemCard(
                          itemImagePath: "assets/images/key.png",
                          itemName: "Iphone 12",
                          userImagePath: "assets/images/no-image.png",
                          user: "Gianni",
                          onlyUser: true,
                          open: true,
                          claimAnswered: false,
                          onlyItem: false,
                        ),
                        ClaimedItemCard(
                          itemImagePath: "assets/images/key.png",
                          itemName: "Iphone 12",
                          userImagePath: "assets/images/no-image.png",
                          user: "Gianni",
                          onlyUser: true,
                          open: true,
                          claimAnswered: false,
                          onlyItem: false,
                        )
                      ],
                      question: 'This is a question',
                    ),
                  ),
                )
              }),
      CustomCard(
          imagePath: "assets/images/occhiali.png",
          text: "Glasses",
          nclaims: 1,
          onTap: () => {
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
                      isClaimed: false,
                      claimStatus: "",
                    ),
                  ),
                )
              }),
      CustomCard(
          imagePath: "assets/images/portafoglio.png",
          text: "Wallet",
          nclaims: 0,
          onTap: () => {print("CIAO")}),
      CustomCard(
          imagePath: "assets/images/iphone.png",
          text: "Iphone 1222222222222222",
          nclaims: 1,
          onTap: () => {print("CIAO")}),
      CustomCard(
          imagePath: "assets/images/airpods.png",
          text: "AirPods Pro",
          nclaims: 0,
          onTap: () => {print("CIAO")}),
    ];
    var lostItems = [
      CustomCard(
        imagePath: "assets/images/iphone.png",
        text: "Iphone 12",
        nclaims: 0,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const LostUserItemScreen(
                image: "assets/images/iphone.png",
                title: "Iphone 12",
                position: "Via Trieste 65, Padova",
                date: "15/05/2023",
                category: "Smartphone",
              ),
            ),
          );
        },
      ),
      CustomCard(
          imagePath: "assets/images/airpods.png",
          text: "AirPods Pro",
          nclaims: 0,
          onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LostGenericItemScreen(
                      image: "assets/images/iphone.png",
                      title: "Iphone 12",
                      position: "Via Trieste 65, Padova",
                      date: "15/05/2023",
                      category: "Smartphone",
                      onSendMessage: () {},
                      user: 'Gianni',
                      userImage: 'assets/images/iphone.png',
                    ),
                  ),
                )
              }),
      CustomCard(
          imagePath: "assets/images/portafoglio.png",
          text: "Brown Wallet",
          nclaims: 0,
          onTap: () => {print("CIAO")}),
      CustomCard(
          imagePath: "assets/images/iphone.png",
          text: "Iphone 12",
          nclaims: 0,
          onTap: () => {print("CIAO")}),
      CustomCard(
          imagePath: "assets/images/portafoglio.png",
          text: "Wallet",
          nclaims: 0,
          onTap: () => {print("CIAO")}),
    ];
    _findItems = findItems;
    _lostItems = lostItems;
  }

  _changeTab(int index) {
    if (index == 2) {
      Navigator.of(context).pushNamed(
        '/insert',
      );
    } else {
      setState(() {
        _selectedTab = index;
      });
    }
  }

  _refreshLostItems(newFindItems) {
    setState(() {
      _findItems = newFindItems;
    });
  }

  _refreshFindItems(newLostItems) {
    setState(() {
      _lostItems = newLostItems;
    });
  }

  Future<void> _refreshPage() async {
    // Simulate an asynchronous operation for page refreshing
    await Future.delayed(Duration(seconds: 2));
    print("Berlusca");
    List<CustomCard> li = [];
    List<CustomCard> fi = [];
    _refreshFindItems(li);
    _refreshLostItems(fi);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_final_fields
    List pages = [
      RefreshIndicator(
        onRefresh: _refreshPage,
        child: HomeScreenPage(
          lostItems: _lostItems,
          foundItems: _findItems,
        ),
      ),
      SearchScreenPage(
        foundChecked: _foundChecked,
        lostChecked: _lostChecked,
        address: (selectedPosition != null
            ? "${selectedPosition?.latitude.toString()}, ${selectedPosition?.longitude.toString()}"
            : ""),
        onSelectPosition: (value) => onSelectPosition(value),
        category: category,
        date: date,
        onFoundCheckedChanged: (value) => onFoundCheckedChanged(value),
        onLostCheckedChanged: (value) => onLostCheckedChanged(value),
        onDataPicked: (value) => onDataPicked(value),
        onSelectCategory: (String value) => onSelectCategory(value),
        onDeleteAllPressed: onDeleteFilters,
      ),
      const Center(
        child: Text("Products"),
      ),
      InboxScreenPage(
        inboxItems: inboxItems,
        onRefresh: onInboxRefresh,
      ),
      OptionScreenPage(
        userImagePath: userImagePath,
        userName: userName,
        onPhotoChange: onProfilePhotoChange,
        userImageFile: userImageFile,
      ),
    ];

    return SafeArea(
        child: Scaffold(
      backgroundColor: PersonalizedColor.backGroundColor,
      body: pages[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: PersonalizedColor.mainColor,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline_outlined), label: "Insert"),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    ));
  }

  void onDataPicked(value) {
    setState(() {
      date = value;
    });
  }

  void onSelectCategory(value) {
    setState(() {
      category = value;
    });
  }

  onSelectPosition(LatLng value) {
    setState(() {
      selectedPosition = value;
    });
  }

  void onDeleteFilters() {
    setState(() {
      date = null;
      _foundChecked = false;
      _lostChecked = false;
      selectedPosition = null;
    });
  }

  onFoundCheckedChanged(bool? value) {
    setState(() {
      _foundChecked = !_foundChecked;
    });
  }

  onLostCheckedChanged(bool? value) {
    setState(() {
      _lostChecked = !_lostChecked;
    });
  }

  void onProfilePhotoChange(XFile? value) {
    setState(() {
      userImageFile = value;
    });
  }

  Future<void> onInboxRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    setState(() {
      inboxItems.insert(
        0,
        InboxItem(
          userImagePath: "assets/images/no-image.png",
          userName: "Maria",
          lastMessage: "Thank you!",
          open: false,
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ChatScreen(
                    userTo: 'Maria',
                    userToImage: 'assets/images/no-image.png',
                    userHasDoneClaim: false,
                    userHasRecivedClaim: false,
                  ),
                ));
          },
        ),
      );
    });
  }
}
