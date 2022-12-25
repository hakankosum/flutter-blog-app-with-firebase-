import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  var returnData = [].obs;
  var ref;
  var documents;

  @override
  Future<void> onInit() async {
    await getPosts();
    super.onInit();
  }

  getPosts() async {
    ref = firebaseFirestore.collection("users");
     documents = await ref
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("data")
        .get();
    print(documents.docs.length);

    for (var i = 0; i < documents.docs.length; i++) {
      
        returnData.add(documents.docs[i].data());
        print(returnData[i]["title"]);

    }

  }
}
