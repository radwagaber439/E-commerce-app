import 'package:e_commerace_project/controller/onboardingcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Custombuttononboarding extends GetView<Onboardingcontrollerimp> {
  const Custombuttononboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 50),
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        height: 40,
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 0),
        onPressed: () {
          controller.next();
        },
        child: Text("4".tr),
        color: AppColor.primarycolor,
        textColor: Colors.white,
      ),
    );
  }
}
