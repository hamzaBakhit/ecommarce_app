import 'package:ecommarce_single_vendor/core/class/staturequest.dart';
import 'package:ecommarce_single_vendor/core/constant/routes.dart';
import 'package:ecommarce_single_vendor/data/datasource/remote/forgetpassword/resetpassword.dart';
import 'package:ecommarce_single_vendor/view/screen/auth/forgetPassword/resetpassword.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../core/functions/handlingdata.dart';

abstract class ResetPasswordController extends GetxController {
  resetPassword();

  goToSuccessResetPassword();
}

class ResetPasswordControllerImp extends ResetPasswordController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  String? email;
  late TextEditingController password;
  late TextEditingController rePassword;
  ResetPasswordData resetPasswordData = ResetPasswordData(Get.find());
  StatusRequest statusRequest = StatusRequest.none;

  @override
  resetPassword() {}

  @override
  goToSuccessResetPassword() async {
    var formData = formstate.currentState;
    if (password.text != rePassword.text) {
      return Get.defaultDialog(
          title: "warning".tr, middleText: "passwordIsNotEqualsRepassword".tr);
    } else if (formData!.validate()) {
      statusRequest = StatusRequest.loading;
      update();
      var response = await resetPasswordData.postData(password.text, email!);
      print("========================>>>resetpassword $response");
      statusRequest = handlingData(response);
      if (StatusRequest.success == statusRequest) {
        if (response["status"] == "success") {
          // data.addAll(response["data"]);
          Get.offNamed(AppRoute.successResetPassword);
        } else {
          Get.defaultDialog(title: "error".tr, middleText: "tryAgain".tr);
          statusRequest = StatusRequest.failure;
        }
      }
      update();
    } else {
      print("** not validate form");
    }
  }

  @override
  void onInit() {
    email = Get.arguments["email"];
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
