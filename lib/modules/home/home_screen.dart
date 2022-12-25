import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebaseauth/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:get/get.dart';

import '../../roots/app_pages.dart';
import '../../shared/service/firestore_service.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Home Screen"),
            SizedBox(
              height: 450,

              

              child:controller.documents!=null? Obx(() => ListView.builder(
                    itemCount: controller.documents.docs.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(controller.returnData[index]["title"]),
                            const Divider(),
                          
                          ],
                        ),
                      );
                    },
                  )):Text("Loading..."),
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.red),
                  child: IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.CREATE);
                      },
                      icon: Center(
                          child: Row(
                        children: const [
                          Icon(Icons.add),
                          Text("Create"),
                        ],
                      ))),
                ),
                SizedBox(
                  width: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
