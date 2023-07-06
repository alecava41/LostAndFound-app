import 'package:flutter/material.dart';

class PersonalizedColor {
  static const mainColor = Color.fromARGB(255, 28, 136, 111);  
  static const backGroundColor = Color.fromRGBO(240, 243, 248, 1);
  static MaterialColor primarySwatch = MaterialColor(mainColor.value, const {
      50: Color.fromRGBO(28, 136, 111, 0.1),
      100: Color.fromRGBO(28, 136, 111, 0.2),
      200: Color.fromRGBO(28, 136, 111, 0.3),
      300: Color.fromRGBO(28, 136, 111, 0.4),
      400: Color.fromRGBO(28, 136, 111, 0.5),
      500: Color.fromRGBO(28, 136, 111, 0.6),
      600: Color.fromRGBO(28, 136, 111, 0.7),
      700: Color.fromRGBO(28, 136, 111, 0.8),
      800: Color.fromRGBO(28, 136, 111, 0.9),
      900: mainColor,
    });
}