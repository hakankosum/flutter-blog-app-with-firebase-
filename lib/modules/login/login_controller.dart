import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../roots/app_pages.dart';

class LoginController extends GetxController{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool checkEmtpyFields(){
    if (usernameController.text.isNotEmpty&&passwordController.text.isNotEmpty){
      return true;
      
    }
    else{
      Get.snackbar("error", "empty fields",snackPosition: SnackPosition.BOTTOM);
      return false;
    }


  }
  
}