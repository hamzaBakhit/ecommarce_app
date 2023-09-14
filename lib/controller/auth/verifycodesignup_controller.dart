import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignupController extends GetxController {
  checkEmail();
  goToSuccessSignUp();
}

class VerifyCodeSignupControllerImp extends VerifyCodeSignupController {
  late String verifyCode;
  @override
  checkEmail() {}

  @override
  goToSuccessSignUp() {
    Get.offNamed(AppRoute.successSignUp);
  }

  @override
  void onInit() {
    super.onInit();
  }

  
}
