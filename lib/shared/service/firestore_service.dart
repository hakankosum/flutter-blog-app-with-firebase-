

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class FirestoreService extends GetxService{
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  Future<void> addNote(String note) async {
    var ref = firebaseFirestore.collection("notes");

    var documentRef = await ref.add({

      "note":note
    });
    


  }
}