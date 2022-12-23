import 'package:firebaseauth/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../shared/service/firestore_service.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Column(
        children: [
           const SizedBox(height: 50,),
          const Text("Home Screen"),
          IconButton(onPressed: () {
            FirestoreService().addNote("asd");
          }, icon: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
            child: const Center(child: Text("Add note"))))
        ],
      )),
    );
  }
}