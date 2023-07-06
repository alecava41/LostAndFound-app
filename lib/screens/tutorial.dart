import 'package:flutter/material.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:lost_and_found/widgets/carousel_item.dart';
import 'package:lost_and_found/widgets/title_logo.dart';

class InfoScreen extends StatefulWidget {
  const InfoScreen({super.key});

  @override
  State<InfoScreen> createState() => _InfoScreenState();
}

class _InfoScreenState extends State<InfoScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      //appBar: AppBar(),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              titleLogoHorizontal(),
              _carouselSlider(),
              const SizedBox(
                height: 25,
              ),
              _loginButton(),
              const SizedBox(height: 35),
              _registerButton()
            ]),
      ),
    ));
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color:
            isActive ? PersonalizedColor.mainColor : Colors.black,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  _carouselSlider() {
    return Column(
      children: [
        SizedBox(
          height: 360.0,
          child: PageView(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              caroselItem('assets/images/input_item.png', 'Report a Lost Item',
                  'Input the item details in the app to report it as lost.'),
              caroselItem(
                  'assets/images/report_item.png',
                  'Report a Found Item',
                  'Notify others by reporting a found item\nthrough the app.'),
              caroselItem(
                  'assets/images/return_item.png',
                  'Arrange Item Return',
                  'Connect with the finder via messaging to arrange\na safe meetup location for item return.'),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildPageIndicator(),
        ),
      ],
    );
  }

  _loginButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          '/login',
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: Colors.white,
        side: const BorderSide(color: PersonalizedColor.mainColor, width: 0.5),
      ),
      child: const Text(
        "Sing In",
        style: TextStyle(fontSize: 20, color: PersonalizedColor.mainColor),
        
      ),
    );
  }

  _registerButton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          '/register',
        );
      },
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: PersonalizedColor.mainColor,
      ),
      child: const Text(
        "Sign Up",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
