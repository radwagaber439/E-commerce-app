import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class resetpasswordcontroller extends GetxController {
  resetpassword();
  gotologin();
}

class resetpasswordcontrollerimp extends resetpasswordcontroller {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  late TextEditingController password;
  late TextEditingController repassword;
  bool isshowpassword = true;
  showpassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  resetpassword() {
    var formdata = formstate.currentState;
    if (formdata!.validate()) {
      print("Valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  gotologin() {
    Get.offNamed(Approot.successresetpassword);
  }

  @override
  void onInit() {
    password = TextEditingController();
    repassword = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    password.dispose();
    repassword.dispose();
    super.dispose();
  }
}
