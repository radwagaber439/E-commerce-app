import 'package:e_commerace_project/auth/logoauth.dart';
import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:e_commerace_project/core/localization/changelocal.dart';
import 'package:get/get.dart';

import 'package:get/get_utils/get_utils.dart';
import 'package:e_commerace_project/view/widget/Language/custombuttonlang.dart';
import 'package:flutter/material.dart';

class Language extends GetView<localcontroller> {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const logoauth(),
            SizedBox(height: 50),
            Text(
              "1".tr,
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(
              height: 10,
            ),
            custombuttonlang(
              textbutton: "Ar",
              onPressed: () {
                print("ffffff");
                controller.changelang("ar");
                Get.toNamed(Approot.test_view);
              },
            ),
            const SizedBox(
              height: 2,
            ),
            custombuttonlang(
                textbutton: "En",
                onPressed: () {
                  controller.changelang("en");
                  Get.toNamed(Approot.test_view);
                })
          ],
        ),
      ),
    );
  }
}
