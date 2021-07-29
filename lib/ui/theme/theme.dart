import 'package:flutter/material.dart';
import 'font.dart';

class AppTheme {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xFF000000),
      accentColor: Colors.white,
      textTheme: AppTextTheme.darkTextTheme,
      fontFamily: 'Ubuntu',
      backgroundColor: const Color(0xFF000000),
      //accentIconTheme: IconThemeData(color: Colors.black),
      //dividerColor: Colors.black12,
    );
  }
}
