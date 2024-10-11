import 'package:e_commerace_project/auth/authbodysigninup.dart';
import 'package:e_commerace_project/auth/authtitlesigninup/authtitlesigninup.dart';
import 'package:e_commerace_project/auth/buttonauthsigninup.dart';
import 'package:e_commerace_project/controller/auth/forgetpassword/forgetpasswordcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/core/functions/validinput.dart';
import 'package:e_commerace_project/view/widget/authsignintextform/authsigninuptextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
class forgetpassword extends StatelessWidget {
  const forgetpassword({super.key});

  @override
  Widget build(BuildContext context) {
    forgetpasswordcontrollerimp controller =
        Get.put(forgetpasswordcontrollerimp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text(
            "Forget Password",
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
                  text: "Check Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                const authbodysigninup(
                    text:
                        "Please Enter Your Email Address To Recive A Verification Code"),
                const SizedBox(
                  height: 50,
                ),
                Authsigninup(
                  valid: (val) {
                    return validinput(val!, 5, 100, "email");
                  },
                  isnumber: false,
                  mycontroller: controller.email,
                  hinttext: "Enter Your Email",
                  labeltext: "Email",
                  iconData: Icons.email_outlined,
                ),
                const SizedBox(
                  height: 20,
                ),
                buttonauthsigninup(
                  text: "Check",
                  onPressed: () {
                    controller.gotoverifycode();
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
