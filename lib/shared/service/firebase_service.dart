import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebaseauth/firebase_options.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class FirebaseService extends GetxService {
  Future<FirebaseService> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: kReleaseMode
          ? "76dbcf52-404b-42e4-bf62-d5f14462c345"
          : "76dbcf52-404b-42e4-bf62-d5f14462c345",
    );
    await FirebaseAppCheck.instance.activate(
      webRecaptchaSiteKey: 'recaptcha-v3-site-key',
      // Default provider for Android is the Play Integrity provider. You can use the "AndroidProvider" enum to choose
      // your preferred provider. Choose from:
      // 1. debug provider
      // 2. safety net provider
      // 3. play integrity provider
      androidProvider: AndroidProvider.debug,
    );
    

   

    return this;
  }
}
