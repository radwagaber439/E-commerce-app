import 'package:e_commerace_project/binding/intialbinding.dart';
import 'package:e_commerace_project/core/localization/changelocal.dart';
import 'package:e_commerace_project/core/localization/translation.dart';
import 'package:e_commerace_project/core/services/services.dart';
import 'package:e_commerace_project/roots.dart';
import 'package:e_commerace_project/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await intialservices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    localcontroller controller = Get.put(localcontroller());
    return GetMaterialApp(
      translations: Mytranslation(),
      locale: controller.language,
      theme: controller.apptheme,
      debugShowCheckedModeBanner: false,
      home: const Language(),
      initialBinding: InitialBindings(),
      //routes: routes,
      getPages: routes,
    );
  }
}
