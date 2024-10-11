import 'package:e_commerace_project/auth/authbodysigninup.dart';
import 'package:e_commerace_project/auth/authtitlesigninup/authtitlesigninup.dart';

import 'package:e_commerace_project/controller/auth/veriftcodesignupcontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class verifycodesignup extends StatelessWidget {
  const verifycodesignup({super.key});

  @override
  Widget build(BuildContext context) {
    verifycodesignupcontrollerimp controller =
        Get.put(verifycodesignupcontrollerimp());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColor.white,
        elevation: 0.0,
        title: Text(
          "Verification Code",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: AppColor.grey),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        child: ListView(
          children: [
            authtitlesigninup(
              text: "Check Code",
            ),
            SizedBox(
              height: 10,
            ),
            authbodysigninup(text: "Please Enter The Digit Code Sent To email"),
            SizedBox(
              height: 50,
            ),
            OtpTextField(
              fieldWidth: 50.0,
              borderRadius: BorderRadius.circular(20),
              numberOfFields: 5,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,
              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode) {
                controller.gotosucesssignup();
              }, // end onSubmit
            ),
          ],
        ),
      ),
    );
  }
}
