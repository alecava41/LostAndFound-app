import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/screens/found_generic_item.dart';
import 'package:lost_and_found/screens/lost_geric_item.dart';
import 'package:lost_and_found/screens/lost_user_item.dart';
import 'package:lost_and_found/screens/pages/home_page.dart';
import 'package:lost_and_found/screens/pages/search_page.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/utils/utility.dart';

import '../widgets/card.dart';
import 'found_user_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  late var _findItems;
  late var _lostItems;
  DateTime? date;
  String category = "";
  bool _foundChecked = false;
  bool _lostChecked = false;
  LatLng? selectedPosition;

  @override
  void initState() {
    super.initState();
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
                    builder: (context) => FoundGenericItemScreen(
                      image: null,
                      title: "Home key",
                      position: "Via Trieste 65, Padova",
                      date: "15/05/2023",
                      category: "Keys",
                      user: "Maria",
                      userImage: "assets/images/occhiali.png",
                      onSendMessage: () {},
                      onClaim: () {},
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
          onTap: () => {print("CIAO")}),
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
        date: date != null
            ? "${Utility.getMonth(date!.month)} ${date!.year}"
            : "",
        onFoundCheckedChanged: (value) => {
          setState(() {
            _foundChecked = !_foundChecked;
          })
        },
        onLostCheckedChanged: (value) => {
          setState(() {
            _lostChecked = !_lostChecked;
          })
        },
        onDataPicked: (value) => onDataPicked(value),
        onSelectCategory: (String value) => onSelectCategory(value),
      ),
      const Center(
        child: Text("Products"),
      ),
      const Center(
        child: Text("Contact"),
      ),
      const Center(
        child: Text("Settings"),
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
}
