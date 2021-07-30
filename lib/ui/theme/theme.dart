import 'package:flutter/material.dart';
import '../ui.dart';


class AppTheme {
  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColor.darkWorld,
      accentColor: AppColor.whiteColor,
      textTheme: AppTextTheme.darkTextTheme,
      fontFamily: 'Ubuntu',
      backgroundColor:  AppColor.darkWorld,
    );
  }
}
