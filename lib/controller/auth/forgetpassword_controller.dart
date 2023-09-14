import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController{

    GlobalKey<FormState> formstate = GlobalKey<FormState>();

   checkEmail();
   goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController{
late TextEditingController email;


  @override
  checkEmail() {

  }
  
  @override
  goToVerifyCode() {
    Get.offNamed(AppRoute.verifyCode);
  }
  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }
}