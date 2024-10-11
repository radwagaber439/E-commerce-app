import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class verifycodecontroller extends GetxController {
  checkcode();
  gotoresetpassword();
}

class verifycodecontrollerimp extends verifycodecontroller {
  late TextEditingController email;
  late String verifycode;

  @override
  checkcode() {}

  @override
  gotoresetpassword() {
    Get.offNamed(Approot.resetpasseord);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
