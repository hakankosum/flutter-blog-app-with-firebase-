import 'package:firebaseauth/roots/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'di.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      getPages: AppPages.pages,
      initialRoute:Routes.LOGIN ,
    );
  }
}