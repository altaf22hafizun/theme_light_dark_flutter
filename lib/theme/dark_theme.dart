import 'package:flutter/material.dart';
import 'app_color.dart';

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.bodyDarkColor,
  hintColor: AppColor.textDarkColor,
  primaryColorLight: AppColor.btnBackgroundDarkColor,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      color: Colors.white,
      fontSize: 35,
      fontWeight: FontWeight.bold,
    ),
  ),
  // buttonTheme: const ButtonThemeData(
  //   textTheme: ButtonTextTheme.primary,
  //   buttonColor: Colors.white,
  // ),
  // colorScheme: ColorScheme(background: AppColor.bodyDarkColor),
);
