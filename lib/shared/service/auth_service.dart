import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseauth/roots/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AuthService extends GetxService {
  String? email;
  String? password;

  Future<AuthService> init() async {
    return this;
  }

  createUser(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          )
          .then((value) => Get.defaultDialog(title: "Register successful!")).then((value) => Get.toNamed(Routes.LOGIN));
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(title: e.message.toString());
    }
  }

  loginUser(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password)
          .then((value) => Get.offNamed(Routes.HOME));
        
    } catch (e) {
      print(e);
    }
  }
}
