import 'package:e_commerace_project/core/constant/theme.dart';
import 'package:e_commerace_project/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class localcontroller extends GetxController {
  Locale? language;
  Myservices myservices = Get.find();
  ThemeData apptheme = themeenglish;
  changelang(String langcode) {
    Locale locale = Locale(langcode);
    myservices.sharedPreferences.setString("lang", langcode);
    apptheme = langcode == "ar" ? themearabic : themeenglish;
    Get.changeTheme(apptheme);
    Get.updateLocale(locale);
  }

  void onInit() {
    String? sharedpreflang = myservices.sharedPreferences.getString("lang");
    if (sharedpreflang == "ar") {
      language = const Locale("ar");
      apptheme = themearabic;
    } else if (sharedpreflang == "en") {
      language = const Locale("en");
      apptheme = themeenglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      apptheme = themeenglish;
    }
    super.onInit();
  }
}
