import 'package:e_commerace_project/auth/forgetpassword/forgetpassword.dart';
import 'package:e_commerace_project/auth/login.dart';
import 'package:e_commerace_project/auth/forgetpassword/resetpassword.dart';
import 'package:e_commerace_project/auth/signup.dart';
import 'package:e_commerace_project/auth/forgetpassword/successresetpassword.dart';
import 'package:e_commerace_project/auth/sucesssignupinwithemail.dart';
import 'package:e_commerace_project/auth/forgetpassword/verifycode.dart';
import 'package:e_commerace_project/auth/veriftcodesignup.dart';
import 'package:e_commerace_project/core/constant/rootsname.dart';
import 'package:e_commerace_project/view/screen/OnBoarding.dart';
import 'package:e_commerace_project/view/screen/home.dart';
import 'package:e_commerace_project/view/test_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const test_view()),
//  GetPage(name: "/", page: () => const Language(), middlewares: [middleware()]),

  GetPage(name: Approot.login, page: () => const Login()),
  GetPage(name: Approot.OnBoarding, page: () => const OnBoarding()),
  GetPage(name: Approot.signup, page: () => const signup()),
  GetPage(name: Approot.forgetpassword, page: () => const forgetpassword()),
  GetPage(name: Approot.verifycode, page: () => const verifycode()),
  GetPage(
      name: Approot.successresetpassword, page: () => const resetpassword()),
  GetPage(
      name: Approot.resetpasseord, page: () => const successresetpassword()),
  GetPage(
      name: Approot.successsignupinwithemail,
      page: () => const successsignup()),
  GetPage(name: Approot.verifycodesignup, page: () => const verifycodesignup()),
  GetPage(name: Approot.home, page: () => const home())
];
