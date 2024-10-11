import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:e_commerace_project/core/services/services.dart';
import 'package:e_commerace_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class Onboardingcontroller extends GetxController {
  //abstract to view methods
  next();
  onpagechanged(int index);
}

class Onboardingcontrollerimp extends Onboardingcontroller {
  late PageController pageController;
  int currentpage = 0;

  Myservices myservices = Get.find();
  @override
  next() {
    currentpage++;

    if (currentpage > onBoardinglist.length - 1) {
      myservices.sharedPreferences.setString("onboarding", "1");
      Get.offNamed(Approot.login);
    } else {
      pageController.animateToPage(currentpage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeInOut);
    }
  }

  @override
  onpagechanged(int index) {
    currentpage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
