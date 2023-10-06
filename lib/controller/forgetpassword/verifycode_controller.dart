import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/data/datasource/remote/forgetpassword/verifycoderesetpassword.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/functions/handlingdata.dart';

abstract class VerifyCodeController extends GetxController {
  checkEmail();
  goToResetPassword(String verifyCode, String email);
}

class VerifyCodeControllerImp extends VerifyCodeController {
  VerifyCodeResetPasswordData verifyCodeResetPasswordData = VerifyCodeResetPasswordData(Get.find());

  StatusRequest? statusRequest;
  @override
  checkEmail() {}

  @override
  goToResetPassword(verifyCode, email) async{
    print("======================> gototresetpasssowrd");

      statusRequest = StatusRequest.loading;
      update();
      var response = await verifyCodeResetPasswordData.postData( email, verifyCode);
      print("========================>>>verifycode $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        print(response["status"]);
        if (response["status"] == "success") {
          // data.addAll(response["data"]);
          Get.offNamed(AppRoute.resetPassword, arguments: {
            "email": email,
          });
        } else {
          Get.defaultDialog(
              title: "error".tr,
                middleText: "verifyCodeNotCorrect".tr
          );
          statusRequest =  StatusRequest.failure;
        }
      }
      update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  
}
