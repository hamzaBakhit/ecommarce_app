import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class VerifyCodeController extends GetxController {
  checkEmail();
  goToResetPassword();
}

class VerifyCodeControllerImp extends VerifyCodeController {
  late String verifyCode;

  @override
  checkEmail() {}

  @override
  goToResetPassword() {
    Get.offNamed(AppRoute.resetPassword);
  }

  @override
  void onInit() {

    super.onInit();
  }

  
}
