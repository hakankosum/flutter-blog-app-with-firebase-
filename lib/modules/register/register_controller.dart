import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/service/auth_service.dart';

class RegisterController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController retryPasswordController = TextEditingController();

  AuthService authService = AuthService();

  createUser() {
    authService.createUser(emailController.text, passwordController.text);
  }
}
