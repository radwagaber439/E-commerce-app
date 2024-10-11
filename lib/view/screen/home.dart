import 'package:e_commerace_project/controller/auth/homepagecontroller.dart';
import 'package:e_commerace_project/core/constant/color.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(homepagecontrollerimp());
    return Scaffold(
        body: GetBuilder<homepagecontrollerimp>(
      builder: (controller) => Container(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.only(top: 10),
              child: Row(children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Find Your Product",
                      hintStyle: TextStyle(fontSize: 18),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      filled: true,
                      fillColor: Colors.grey[200]),
                )),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_active_outlined,
                        size: 30,
                        color: Colors.grey[600],
                      )),
                ),
              ]),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      decoration: BoxDecoration(
                          color: AppColor.primarycolor,
                          borderRadius: BorderRadius.circular(20)),
                      child: const ListTile(
                          title: Text(
                            "A summer surprise",
                            style:
                                TextStyle(color: AppColor.white, fontSize: 20),
                          ),
                          subtitle: Text(
                            " Cash Back 20 % ",
                            style:
                                TextStyle(color: AppColor.white, fontSize: 30),
                          )),
                    ),
                    Positioned(
                      top: -20,
                      right: -20,
                      child: Container(
                        height: 160,
                        width: 160,
                        decoration: BoxDecoration(
                            color: AppColor.secondcolor,
                            borderRadius: BorderRadius.circular(160)),
                      ),
                    )
                  ],
                )),
            Container(height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                
                itemBuilder: (context, index) {
                  return Container();
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
