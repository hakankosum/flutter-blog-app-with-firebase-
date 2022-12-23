import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  @override
  void onReady() {
    Get.snackbar("", "",backgroundColor: Colors.grey,messageText: const Text("Successfully logged in."));
    super.onReady();
  }
  
}