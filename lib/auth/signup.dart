import 'package:e_commerace_project/auth/authbodysigninup.dart';
import 'package:e_commerace_project/auth/authtitlesigninup/authtitlesigninup.dart';
import 'package:e_commerace_project/auth/buttonauthsigninup.dart';
import 'package:e_commerace_project/auth/textsigninup.dart';
import 'package:e_commerace_project/controller/auth/signupcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/core/functions/alertexitapp.dart';
import 'package:e_commerace_project/core/functions/validinput.dart';
import 'package:e_commerace_project/view/widget/authsignintextform/authsigninuptextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => signupcontrollerimp()); //history
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text(
            "Sign Up",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: GetBuilder<signupcontrollerimp>(
            builder: (controller) => WillPopScope(
                onWillPop: alertexitapp,
                child: Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Form(
                    key: controller.formstate,
                    child: ListView(
                      children: [
                        const authtitlesigninup(
                          text: "Welcome Back",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const authbodysigninup(
                            text:
                                "Sign Up With Your Email And Password Or Continue With Social Media"),
                        const SizedBox(
                          height: 50,
                        ),
                        Authsigninup(
                          valid: (val) {
                            return validinput(val!, 5, 50, "username");
                          },
                          isnumber: false,
                          mycontroller: controller.username,
                          hinttext: "Enter Your UserName",
                          labeltext: "UserName",
                          iconData: Icons.person_outlined,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Authsigninup(
                          valid: (val) {
                            return validinput(val!, 5, 100, "email");
                          },
                          isnumber: false,
                          mycontroller: controller.email,
                          hinttext: "Enter Your Email",
                          labeltext: "Email",
                          iconData: Icons.lock_outlined,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Authsigninup(
                          valid: (val) {
                            return validinput(val!, 5, 30, "phone");
                          },
                          isnumber: true,
                          mycontroller: controller.phone,
                          hinttext: "Enter Your Phone",
                          labeltext: "Phone",
                          iconData: Icons.phone_outlined,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GetBuilder<signupcontrollerimp>(
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
                        const SizedBox(height: 10),
                        buttonauthsigninup(
                          text: "Sign Up",
                          onPressed: () {
                            controller.signup();
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        textsigninup(
                          text1: " Have An Account ? ",
                          text2: "Sign In",
                          onTap: () {
                            controller.gotosignin();
                          },
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
