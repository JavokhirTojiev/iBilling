import 'package:flutter/material.dart';
import 'color.dart';

class AppTextTheme {
  static TextTheme darkTextTheme =  const TextTheme(
    bodyText1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    bodyText2: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
      color: AppColor.greyColor,
    ),
    headline1: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    headline2: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: AppColor.whiteColor,
    ),
    headline3: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: AppColor.whiteColor,
    ),
    headline4: TextStyle(
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
      color: AppColor.whiteColor,
    ),
    headline5: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w700,
      color: AppColor.darkColor,
    ),
    headline6: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color:  AppColor.lightGreenColor,
    ),
  );
}
