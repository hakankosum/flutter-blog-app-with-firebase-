import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../modules/home/home_controller.dart';

class FirestoreService extends GetxService {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addPost(String title, String content) async {
    var ref = firebaseFirestore.collection("users");
    


    ref.doc(FirebaseAuth.instance.currentUser!.uid).collection("data").doc(
      DateTime.now().toString()
    ).set({"title":title,"content":content});
    

  }
}
