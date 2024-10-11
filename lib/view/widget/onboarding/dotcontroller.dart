import 'package:e_commerace_project/controller/onboardingcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customdotcontrolleronboarding extends StatelessWidget {
  const Customdotcontrolleronboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Onboardingcontrollerimp>(
        builder: (controller) =>
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ...List.generate(
                  onBoardinglist.length,
                  (index) => AnimatedContainer(
                        margin: EdgeInsets.only(right: 5),
                        duration: const Duration(milliseconds: 900),
                        width: controller.currentpage == index ? 20 : 5,
                        height: 6,
                        decoration: BoxDecoration(
                            color: AppColor.primarycolor,
                            borderRadius: BorderRadius.circular(10)),
                      ))
            ]));
  }
}
