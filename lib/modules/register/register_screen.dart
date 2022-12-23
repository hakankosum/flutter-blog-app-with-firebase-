import 'package:firebaseauth/modules/register/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../roots/app_pages.dart';
import '../../shared/service/auth_service.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(height: 100),
            const Text("REGISTER"),
            TextField(
              controller: controller.emailController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: "Username"),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.passwordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: "Password"),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controller.retryPasswordController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  filled: true,
                  fillColor: Colors.grey,
                  hintText: "Verify password"),
            ),
            const SizedBox(height: 20),
            TextButton(
                onPressed: () {
                  if (controller.emailController.text.isNotEmpty &&
                      controller.passwordController.text.isNotEmpty&&
                      (controller.passwordController.text==controller.retryPasswordController.text)){
                        
                        controller.createUser();
                        

                      }
                  else{
                    Get.snackbar("", "",backgroundColor: Colors.red,
                      messageText: const Text("Error! Check username or password")
                    );
                  }
                      
                    
                },
                child: Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: Text(
                      "REGISTER",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
