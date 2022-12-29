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
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            const Center(child: Text("My Posts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            SizedBox(
              height: 410,

              child: StreamBuilder(
                stream: controller.getPosts(),
                builder: (context, snapshot) {
                return SizedBox(
                  height: 200,
                  child: (snapshot.hasData)? ListView.builder(
                    itemCount: snapshot.data!.size,
                    itemBuilder: (context, index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(snapshot.data!.docs[snapshot.data!.size-1-index]["title"],style: const TextStyle(fontSize: 16),
                            ),
                            IconButton(onPressed: () {
                              controller.deletePost(snapshot.data!.docs[snapshot.data!.size-1-index].id);
                            }, icon: Icon(Icons.delete))


                          ],
                        ),
                        const Divider(),
                        SizedBox(
                          height: 100,
                          child: Text(snapshot.data!.docs[snapshot.data!.size-1-index]["content"])),
                        
                        const SizedBox(height: 10)
                      ],
                                      ),
                    );
                  },):Text("Add Post"),
                );
                
              },),
              // child: Obx(() => ListView.builder(
              //       itemCount: controller.returnData.length,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           padding: const EdgeInsets.all(10),
              //           margin: const EdgeInsets.only(bottom: 10),
              //           height: 100,
              //           decoration: BoxDecoration(
              //               border: Border.all(),
              //               borderRadius: BorderRadius.circular(10)),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.start,
              //             children: [
              //               Text(controller.returnData[index]["title"]),
              //               const Divider(),
              //               Text(controller.returnData[index]["content"]),
              //             ],
              //           ),
              //         );
              //       },
              //     )),
            ),
            Spacer(),
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
                
              ],
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}
