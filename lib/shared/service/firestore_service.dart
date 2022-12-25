import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService {
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addPost(String title, String content) async {
    var ref = firebaseFirestore.collection("users");


    ref.doc(FirebaseAuth.instance.currentUser!.uid).collection("data").add(
      {"title": title, "content": content}
    );
    

  }
}
