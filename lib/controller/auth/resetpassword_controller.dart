import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/forgetPassword/resetpassword.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController{
   resetPassword();
   goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController{

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

late TextEditingController password;
late TextEditingController rePassword;


  @override
  resetPassword() {

  }
  
  @override
  goToSuccessResetPassword() {
    Get.offNamed(AppRoute.successResetPassword);
  }
  @override
  void onInit() {
    password = TextEditingController();
    rePassword = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }
}