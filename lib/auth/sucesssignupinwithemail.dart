import 'package:e_commerace_project/auth/buttonauthsigninup.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class successsignup extends StatelessWidget {
  const successsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text(
          "success",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 200,
              color: AppColor.primarycolor,
            ),
            Text("37".tr,
                style: Theme.of(context)
                    .textTheme
                    .displayLarge!
                    .copyWith(fontSize: 30)),
            Text("38".tr),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: buttonauthsigninup(
                  text: "31".tr,
                  onPressed: () {
                    Get.offNamed(Approot.login);
                  }),
            ),
          ],
        ),
      )),
    );
  }
}
