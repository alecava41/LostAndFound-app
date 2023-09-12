import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lost_and_found/core/presentation/widgets/large_green_button.dart';
import 'package:lost_and_found/utils/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../widgets/carousel_item.dart';
import '../widgets/large_white_button.dart';
import '../../widgets/title_logo.dart';

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
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white30,
        statusBarBrightness: Brightness.light,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, mainAxisSize: MainAxisSize.max, children: [
              SizedBox(
                height: 2.5.h,
              ),
              titleLogoHorizontal(context),
              _carouselSlider(),
              SizedBox(
                height: 3.h,
              ),
              _loginButton(),
              SizedBox(height: 1.h),
              _registerButton()
            ]),
          ),
        ),
      ),
    );
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? PersonalizedColor.mainColor : Colors.black,
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
          height: 50.h,
          child: PageView(
            physics: const ClampingScrollPhysics(),
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            children: <Widget>[
              carouselItem('assets/images/input_item.png', AppLocalizations.of(context)!.tutorialInitialPage1Title,
                  AppLocalizations.of(context)!.tutorialInitialPage1Content),
              carouselItem('assets/images/report_item.png', AppLocalizations.of(context)!.tutorialInitialPage2Title,
                  AppLocalizations.of(context)!.tutorialInitialPage2Content),
              carouselItem('assets/images/return_item.png', AppLocalizations.of(context)!.tutorialInitialPage3Title,
                  AppLocalizations.of(context)!.tutorialInitialPage3Content),
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
    return PersonalizedLargeWhiteButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          '/login',
        );
      },
      text: Text(
        AppLocalizations.of(context)!.singIn,
        style: const TextStyle(fontSize: 20, color: PersonalizedColor.mainColor),
      ),
    );
  }

  _registerButton() {
    return PersonalizedLargeGreenButton(
      onPressed: () {
        Navigator.of(context).pushNamed(
          '/register',
        );
      },
      text: Text(
        AppLocalizations.of(context)!.signUp,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}
