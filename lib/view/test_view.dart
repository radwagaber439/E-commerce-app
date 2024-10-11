import 'package:e_commerace_project/controller/test_datacontroller.dart';
import 'package:e_commerace_project/core/class/statusrequest.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class test_view extends StatelessWidget {
  const test_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: Text("Title")),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return const Center(
            child: Text("loading"),
          );
        } else if (controller.statusRequest == StatusRequest.offlinefailure) {
          return const Center(child: Text("Offline Failure"));
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          return const Center(child: Text("Server Failure"));
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              });
        }
      }),
    );
  }
}
