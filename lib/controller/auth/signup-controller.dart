import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class SignUpController extends GetxController{
   signup();
   goToSignIn();
}

class SignUpControllerImp extends SignUpController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

late TextEditingController username;
late TextEditingController phonenumber;
late TextEditingController email;
late TextEditingController password;


  @override
  signup() {
      Get.offNamed(AppRoute.verifycodesignup);
  }
  
  @override
  goToSignIn() {
    Get.offNamed(AppRoute.login);
  }
  @override
  void onInit() {
    username = TextEditingController();
    email = TextEditingController();
    phonenumber = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    username.dispose();
    phonenumber.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }
}