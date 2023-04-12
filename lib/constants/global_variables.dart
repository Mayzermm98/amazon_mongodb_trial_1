import 'package:flutter/material.dart';

String uri = 'http://192.168.100.18:3000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(0, 37, 122, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color.fromARGB(255, 216, 216, 216);
  static var selectedNavBarColor = Colors.red[970]!;
  static const unselectedNavBarColor = Colors.black87;
}
