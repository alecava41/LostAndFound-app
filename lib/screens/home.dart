import 'package:flutter/material.dart';
import 'package:lost_and_found/screens/pages/home_page.dart';
import 'package:lost_and_found/screens/pages/search_page.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../widgets/card.dart';

var lostItems = [
  CustomCard(
      imagePath: "assets/images/iphone.png",
      text: "Iphone 12",
      nclaims: 0,
      onTap: () => {print("CIAO")}),
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

var findItems = [
  CustomCard(
      imagePath: "assets/images/key.png",
      text: "Home key",
      nclaims: 2,
      onTap: () => {print("CIAO")}),
  CustomCard(
      imagePath: "assets/images/occhiali.png",
      text: "Glasses",
      nclaims: 1,
      onTap: () => {print("CIAO")}),
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

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 0;
  var _findItems = findItems;
  var _lostItems = lostItems;

  bool _foundChecked = false;
  bool _lostChecked = false;

  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
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
          range: 2,
          address: "Via Trieste 65, Padova",
          category: "Smartphone",
          date: "April 2021",
          onFoundCheckedChanged: (value) => {
                setState(() {
                  _foundChecked = !_foundChecked;
                })
              },
          onLostCheckedChanged: (value) => {
                setState(() {
                  _lostChecked = !_lostChecked;
                })
              }),
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
      backgroundColor: Color.fromRGBO(240, 243, 248, 1),
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
}
