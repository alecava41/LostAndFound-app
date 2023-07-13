import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:lost_and_found/screens/pages/home_page.dart';
import 'package:lost_and_found/screens/pages/option_page.dart';
import 'package:lost_and_found/screens/pages/search_page.dart';
import 'package:lost_and_found/utils/colors.dart';

import '../features/item/presentation/widgets/home/custom_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedTab = 4;
  List<CustomCard> _findItems = [];
  List<CustomCard> _lostItems = [];
  DateTime? date;
  String category = "";
  bool _foundChecked = false;
  bool _lostChecked = false;
  LatLng? selectedPosition;
  String userImagePath = "assets/images/no-image.png";
  String userName = "Alessandro";
  XFile? userImageFile;

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
    await Future.delayed(const Duration(seconds: 2));
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
        // TODO: chiamata google per trasformare le coordinate in Via
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
      const Center(
        child: Text("Contact"),
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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined), label: "Insert"),
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
}
