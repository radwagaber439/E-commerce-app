import 'package:e_commerace_project/auth/authbodysigninup.dart';
import 'package:e_commerace_project/auth/authtitlesigninup/authtitlesigninup.dart';
import 'package:e_commerace_project/auth/buttonauthsigninup.dart';
import 'package:e_commerace_project/auth/logoauth.dart';
import 'package:e_commerace_project/auth/textsigninup.dart';
import 'package:e_commerace_project/controller/auth/logincontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:e_commerace_project/core/functions/alertexitapp.dart';
import 'package:e_commerace_project/core/functions/validinput.dart';
import 'package:e_commerace_project/view/screen/home.dart';
import 'package:e_commerace_project/view/widget/authsignintextform/authsigninuptextform.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    logincontrollerimp controller = Get.put(logincontrollerimp());
    Get.lazyPut(() => logincontrollerimp());
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: AppColor.white,
          elevation: 0.0,
          title: Text(
            "Sign In",
            style: Theme.of(context)
                .textTheme
                .displayLarge!
                .copyWith(color: AppColor.grey),
          ),
        ),
        body: WillPopScope(
            onWillPop: alertexitapp,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              child: Form(
                key: controller.formstate,
                child: ListView(
                  children: [
                    const logoauth(),
                    const authtitlesigninup(
                      text: "Welcome Back",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const authbodysigninup(
                        text:
                            "Sign In With Your Email And Password Or Continue With Social Media"),
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
                      height: 25,
                    ),
                    GetBuilder<logincontrollerimp>(
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
                    InkWell(
                      onTap: () {
                        controller.gotoforgetpassword();
                      },
                      child: Container(
                        child: const Text(
                          "Forget Password",
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                    buttonauthsigninup(
                      text: "Sign In",
                      onPressed: () {
                        Get.offNamed(Approot.home);
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    textsigninup(
                      text1: "Don't Have Account ? ",
                      text2: "Sign Up",
                      onTap: () {
                        controller.gotosignup();
                      },
                    )
                  ],
                ),
              ),
            )));
  }
}
