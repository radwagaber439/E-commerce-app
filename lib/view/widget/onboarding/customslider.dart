import 'package:e_commerace_project/controller/onboardingcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Customslideronboardig extends GetView<Onboardingcontrollerimp> {
  const Customslideronboardig({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (value) {
        controller.onpagechanged(value);
      },
      itemCount: onBoardinglist.length,
      itemBuilder: (context, i) => Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            onBoardinglist[i].title!,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: AppColor.black),
          ),
          SizedBox(
            height: 80,
          ),
          Image.asset(
            onBoardinglist[i].image!,
            //  width: 200,
            // height: 270,
            height: Get.width / 1.4,
            fit: BoxFit.fill,
          ),
          Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(onBoardinglist[i].body!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      height: 2,
                      color: AppColor.grey,
                      fontWeight: FontWeight.bold))),
        ],
      ),
    );
  }
}
