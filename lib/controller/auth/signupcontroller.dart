import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: camel_case_types
abstract class signupcontroller extends GetxController {
  signup();
  gotosignin();
}

// ignore: camel_case_types
class signupcontrollerimp extends signupcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController phone;
  late TextEditingController username;
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  signup() {
    if (formstate.currentState!.validate()) {
      Get.offNamed(Approot.verifycodesignup);
    } else {
      print("Not Valid");
    }
  }

  @override
  gotosignin() {
    Get.offNamed(Approot.login);
  }

  @override
  void onInit() {
    username = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    username.dispose();
    phone.dispose();
    super.dispose();
  }

  void gotoverifycode() {}
}
