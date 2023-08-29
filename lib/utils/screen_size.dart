import 'package:flutter/widgets.dart';

class ScreenSize{
  static bool isSmallSmartphoneDevice (context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight < 700; 
  }

  static bool isMediumSmartphoneDevice (context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight >= 700 && screenHeight <= 800;
  }

  static bool isBigSmartphoneDevice (context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return screenHeight > 800;
  }
}
