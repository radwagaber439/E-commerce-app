import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class verifycodesignupcontroller extends GetxController {
  checkcode();
  gotosucesssignup();
}

class verifycodesignupcontrollerimp extends verifycodesignupcontroller {
  late TextEditingController email;
  late String verifycode;

  @override
  checkcode() {}

  @override
  gotosucesssignup() {
    Get.offNamed(Approot.successsignupinwithemail);
  }

  @override
  void onInit() {
    super.onInit();
  }
}
