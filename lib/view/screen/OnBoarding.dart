import 'package:e_commerace_project/controller/onboardingcontroller.dart';
import 'package:e_commerace_project/view/widget/onboarding/custombutton.dart';
import 'package:e_commerace_project/view/widget/onboarding/customslider.dart';
import 'package:e_commerace_project/view/widget/onboarding/dotcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Onboardingcontrollerimp());
    return const Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Expanded(flex: 3, child: Customslideronboardig()),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Customdotcontrolleronboarding(),
                  Spacer(
                    flex: 2,
                  ),
                  Custombuttononboarding()
                ],
              ))
        ],
      ),
    ));
  }
}
