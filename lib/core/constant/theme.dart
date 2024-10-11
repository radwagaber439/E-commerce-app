import 'package:e_commerace_project/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeenglish = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 27, color: AppColor.black),
    bodyLarge:
        TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold),
  ),
);
ThemeData themearabic = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "Cairo",
  textTheme: const TextTheme(
    displayLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 22, color: AppColor.black),
    headlineLarge: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 27, color: AppColor.black),
    bodyLarge:
        TextStyle(height: 2, color: AppColor.grey, fontWeight: FontWeight.bold),
  ),
);
