import 'package:e_commerace_project/auth/authbodysigninup.dart';
import 'package:e_commerace_project/auth/authtitlesigninup/authtitlesigninup.dart';
import 'package:e_commerace_project/auth/buttonauthsigninup.dart';
import 'package:e_commerace_project/controller/auth/forgetpassword/resetpasswordcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/core/functions/validinput.dart';
import 'package:e_commerace_project/view/widget/authsignintextform/authsigninuptextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class resetpassword extends StatelessWidget {
  const resetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    resetpasswordcontrollerimp controller =
        Get.put(resetpasswordcontrollerimp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text(
            "Reset Password",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
          child: Form(
            key: controller.formstate,
            child: ListView(
              children: [
                const authtitlesigninup(
                  text: "New Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                const authbodysigninup(text: "Please Enter New Password "),
                const SizedBox(
                  height: 50,
                ),
                GetBuilder<resetpasswordcontrollerimp>(
                  builder: (controller) => Authsigninup(
                    obscuretext: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showpassword();
                    },
                    valid: (val) {
                      return validinput(val!, 5, 30, "password");
                    },
                    isnumber: false,
                    mycontroller: controller.password,
                    hinttext: "Enter Your Password",
                    labeltext: "Password",
                    iconData: Icons.lock_outlined,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                GetBuilder<resetpasswordcontrollerimp>(
                  builder: (controller) => Authsigninup(
                    obscuretext: controller.isshowpassword,
                    onTapIcon: () {
                      controller.showpassword();
                    },
                    valid: (val) {
                      return validinput(val!, 5, 30, "password");
                    },
                    isnumber: false,
                    mycontroller: controller.password,
                    hinttext: "Re Enter Your Password",
                    labeltext: "Password",
                    iconData: Icons.lock_outlined,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                buttonauthsigninup(
                  text: "Save",
                  onPressed: () {
                    controller.gotologin();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
