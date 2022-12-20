import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../roots/app_pages.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text("LOGIN"),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: "Username"),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    filled: true,
                    fillColor: Colors.grey,
                    hintText: "Password"),
              ),
              const SizedBox(height: 20),
              TextButton(
                  onPressed: () => Get.toNamed(Routes.HOME),
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  InkWell(
                    onTap: () => Get.toNamed(Routes.REGISTER),
                    child: const Text(
                      "Click here",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  const Text(
                    " to register.",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
