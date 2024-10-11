import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
abstract class logincontroller extends GetxController {
  // ignore: non_constant_identifier_names
  Login();
  gotosignup();
  gotoforgetpassword();
}

// ignore: camel_case_types
class logincontrollerimp extends logincontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  // ignore: non_constant_identifier_names
  @override
  Login() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  gotosignup() {
    Get.offNamed(Approot.signup);
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  gotoforgetpassword() {
    Get.toNamed(Approot.forgetpassword);
  }
}
