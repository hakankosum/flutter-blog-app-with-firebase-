import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  bool hasData = false;

  var ref;
  var documents;

  @override
  Future<void> onInit() async {
    await getPosts();
    super.onInit();
  }

  Stream<QuerySnapshot> getPosts() {
    ref = firebaseFirestore
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("data").snapshots();
        
    print(ref.runtimeType);
    
    return ref;
  }

  deletePost(String id){
    ref = firebaseFirestore
        .collection("users")
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection("data").doc(id).delete();


  }
}
