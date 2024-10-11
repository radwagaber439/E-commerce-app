import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:e_commerace_project/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class middleware extends GetMiddleware {
  @override
  int? get priority => 1;

  Myservices myservices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myservices.sharedPreferences.getString("onboarding") == "1") {
      return const RouteSettings(name: Approot.login);
    }
  }
}
