import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../roots/app_pages.dart';
import '../../shared/service/auth_service.dart';

class LoginController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  AuthService authService = AuthService();
  
  loginUser() {
    print("login başladı");
    authService.loginUser(usernameController.text, passwordController.text);
    print("login bitti");
  }
}
