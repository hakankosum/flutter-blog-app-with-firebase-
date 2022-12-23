import 'package:firebaseauth/modules/home/home_screen.dart';
import 'package:firebaseauth/modules/register/register_binding.dart';
import 'package:firebaseauth/modules/register/register_screen.dart';
import 'package:get/get.dart';

import '../modules/home/home_binding.dart';
import '../modules/login/login_binding.dart';
import '../modules/login/login_screen.dart';
part "app_roots.dart";





abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.LOGIN, page:()=>  LoginScreen(),binding: LoginBinding()),
    GetPage(name: Routes.REGISTER, page:()=>  RegisterScreen(),binding: RegisterBinding()),
    GetPage(name: Routes.HOME, page:()=>  HomeScreen(),binding: HomeBinding())
  ];
}