import 'package:firebaseauth/modules/create_post/create_post_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../shared/service/firestore_service.dart';

class CreatePostScreen extends GetView<CreatePostController> {
  const CreatePostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children:  [
            const SizedBox(height: 30,),
             TextField(
              controller: controller.titleTextController,
              decoration: const InputDecoration(
                hintText:"Title"
              ),
            ),
             TextField(
              controller: controller.contentTextController,
              minLines: 4,
              maxLines: 10,
              decoration: const InputDecoration(
                hintText:"Content"
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(10)),
              child: IconButton(onPressed:() {
                FirestoreService().addPost(controller.titleTextController.text,controller.contentTextController.text);
                
              }, icon: Row(children: [Text("Add Post"),Icon(Icons.add)])))
          ],
        ),
      ),
    );
  }
}