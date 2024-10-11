import 'package:e_commerace_project/auth/buttonauthsigninup.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class successresetpassword extends StatelessWidget {
  const successresetpassword({super.key});

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
            Center(
              child: Icon(
                Icons.check_circle_outline,
                size: 200,
                color: AppColor.primarycolor,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "36".tr,
              style: Theme.of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(fontSize: 30),
              textAlign: TextAlign.center,
            ),
            Text(""),
            const Spacer(),
            Container(
              width: double.infinity,
              child: buttonauthsigninup(
                  text: ("31".tr),
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
