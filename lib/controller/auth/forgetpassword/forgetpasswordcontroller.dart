import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class forgetpasswordcontroller extends GetxController {
  checkemail();
  gotoverifycode();
}

class forgetpasswordcontrollerimp extends forgetpasswordcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  checkemail() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  gotoverifycode() {
    Get.offNamed(Approot.verifycode);
  }

  @override
  void onInit() {
    email = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();

    super.dispose();
  }
}
