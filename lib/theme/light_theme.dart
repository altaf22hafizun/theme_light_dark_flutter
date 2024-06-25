import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.bodyColor,
  hintColor: AppColor.textColor,
  primaryColorLight: AppColor.btnBackgroundColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.black,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    ),
  ),
  // buttonTheme: const ButtonThemeData(
  //   textTheme: ButtonTextTheme.primary,
  //   buttonColor: Colors.black,
  // ),
  // // colorScheme: ColorScheme(background: AppColor.bodyColor),
);
