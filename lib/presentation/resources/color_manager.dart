import 'package:flutter/material.dart';

class ColorManager {
  static Color KPrimaryColor = HexColor.fromHex("#039be5");
  static Color KSecondaryColor = HexColor.fromHex("#f5f5f5");
  static Color KTextColor = HexColor.fromHex("#263238");


  
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opactiy 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
